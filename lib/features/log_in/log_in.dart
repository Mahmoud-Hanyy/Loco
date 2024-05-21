import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:loco/core/utils/colors.dart';
import 'package:loco/core/widgets/custom-text-field.dart';
import 'package:loco/features/home/home.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/dialog-utils.dart';
import '../../core/utils/firebase-utils.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/start_button.dart';
import '../register/register.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';





class LogIn extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var emailController=TextEditingController(text: 'Miro@gmail.com');
  var passwordController=TextEditingController(text: '1234567');
  var formKey = GlobalKey<FormState>();
  final FirebaseAuth auth=FirebaseAuth.instance;
  final GoogleSignIn googleSignIn=GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.45;
    var width = MediaQuery.of(context).size.width * 0.9;
    return Scaffold(
      backgroundColor: white,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(Assets.signIn,
                height: height,
                width: width,
              ),
              Text(AppLocalizations.of(context)!.welcome_back,
                  style: Styles.textStyle24.copyWith(
                    fontWeight: FontWeight.bold,
                  )
              ),
              const SizedBox(height: 15,),
              CustomTextFormField(
                label: AppLocalizations.of(context)!.email_address,
                controller: emailController,
                validator: (text){
                  if(text==null|| text.trim().isEmpty){
                    return 'Please enter email';
                  }
                  bool emailValid =
                  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(text);
                  if(!emailValid){
                    return 'please enter valid email';
                  }
                  return null;
                },),
              const SizedBox(height: 20,),
              CustomTextFormField(
                label:AppLocalizations.of(context)!.password,
                controller: passwordController,
                validator: (text){
                  if(text==null|| text.trim().isEmpty){
                    return 'Please enter password';
                  }
                  if(text.length<6){
                    return 'Password should at least 6 characters';
                  }
                  return null;
                },
                isPassword: true,
              ),

              const SizedBox(height: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPassword(),));
                    },
                    child: Text(AppLocalizations.of(context)!.forget_your_password,
                      style: Styles.textStyle16,
                      textAlign: TextAlign.right,),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              StartButton(
                onPressed: () {
                  LoginIn();
                  //Navigator.pushNamed(context, NavigationPage.routeName);
                },
                textOfButton: AppLocalizations.of(context)!.log_in,
              ),
              const SizedBox(height: 15,),
              Text(AppLocalizations.of(context)!.or_login_with,
                style: Styles.textStyle16,
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  SignInWithGoogle();

                },
                child: Image.asset('lib/resources/images/google.jpg',
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RegisterScreen.routeName);
                },
                child: Text(AppLocalizations.of(context)!.dont_have_an_account_register,
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void LoginIn() async{
    if(formKey.currentState?.validate()==true){
      DialogUtils.showLoading(context, 'Loading');
      try {
        final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        var user= await FirebaseUtils.readUserFromFireStore(credential.user?.uid??'');
        if(user==null){
          return ;
        }
        DialogUtils.hideLoading(context);
        DialogUtils.showMessage(context, 'Login Successfully',
            title: 'Success',
            posActionName: 'ok',
            posAction: (){
              Navigator.of(context).pushReplacementNamed(HomePage.routename);
            });
        print('login successfully');
        print(credential.user?.uid??'');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'invalid-credential') {
          DialogUtils.hideLoading(context);
          DialogUtils.showMessage(context, 'Invalid password or email',
              title: 'Error',
              posActionName: 'ok');
          print('No user found for that email.');
        }
      }
    }

  }

  void SignInWithGoogle() async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount!
        .authentication;
    AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithCredential(authCredential);
    print(userCredential.user?.displayName);
    if (userCredential.user != null) {
      Navigator.of(context).pushReplacementNamed(HomePage.routename);
    }
  }
//AuthResult authResult= await auth.signInWithCredential(authCredential);


}
