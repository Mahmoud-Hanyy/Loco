import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/features/log_in/log_in.dart';
import 'package:loco/features/model/my_user.dart';
import 'package:loco/features/navigation/navigation.dart';
import 'package:provider/provider.dart';

import '../../core/utils/assets.dart';
import '../../core/utils/dialog_utils.dart';
import '../../core/utils/firebase_utils.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/start_button.dart';
import '../../provider/auth_provider.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'registerScreen';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var firstNameController=TextEditingController(text: '');

  var lastNameController=TextEditingController(text: '');

  var emailController=TextEditingController(text: '');

  var passwordController=TextEditingController(text: '');

  var confirmPasswordController=TextEditingController(text: '');

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height*0.45 ;
    var width = MediaQuery.of(context).size.width*0.85 ;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:Stack(
                    children: [
                      Positioned(
                          top: -150,
                          right: -150,
                          child: Container(
                            height: height ,
                            width: width,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:AssetImage(Assets.blob))
                            ),
                          )
                      )
                    ],
                  )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25),
                  child: Text(AppLocalizations.of(context)!.register,
                      style: Styles.textOfLabel.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary
                      ))),
              const SizedBox(height: 5,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25),
                  child: Text(AppLocalizations.of(context)!.register_to_enjoy_our_features,
                      style: Styles.textStyle20.copyWith(
                          color : Theme.of(context).colorScheme.primary
                      ),
                  ),
              ),
              const SizedBox(height: 15,),
              CustomTextFormField(
                label: AppLocalizations.of(context)!.first_name,
                controller: firstNameController,
                validator: (text){
                  if(text==null|| text.trim().isEmpty){
                    return 'Please enter first name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15,),
              CustomTextFormField(label: AppLocalizations.of(context)!.last_name,
                controller: lastNameController,
                validator: (text){
                  if(text==null|| text.trim().isEmpty){
                    return 'Please enter last name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15,),
              CustomTextFormField(label: AppLocalizations.of(context)!.email_address,
                controller: emailController,
                icon: Icons.email,
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
              const SizedBox(height: 15,),
              CustomTextFormField(
                label:AppLocalizations.of(context)!.password,
                controller: passwordController,
                icon: Icons.lock,
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
              CustomTextFormField(label: AppLocalizations.of(context)!.confirm_password,
                controller: confirmPasswordController,
                icon: Icons.lock,
                validator: (text){
                  if(text==null|| text.trim().isEmpty){
                    return 'Please enter confirm password';
                  }
                  if(text != passwordController.text){
                    return "password doesn't match";
                  }
                  return null;
                },
                isPassword: true,
              ),
              const SizedBox(height: 30,),
              Center(
                child: StartButton(
                  onPressed: () {
                    register();
                    //Navigator.pushNamed(context, NavigationPage.routeName);
                  },
                  textOfButton: AppLocalizations.of(context)!.register,
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, LogIn.routeName);
                      },
                      child: Text(AppLocalizations.of(context)!.already_have_an_account_Login,style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary
                      ))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void register() async{
    if(formKey.currentState?.validate()==true){
      DialogUtils.showLoading(context, 'Loading...');
      //await Future.delayed(Duration(seconds: 2));
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        MyUser myUser = MyUser(
            id: credential.user?.uid ?? '',
            firstName: firstNameController.text,
            lastName: lastNameController.text,
            email: emailController.text);
        await FirebaseUtils.addUserToFireStore(myUser);
        var authProvider = Provider.of<AuthProvidersr>(context, listen: false);
        authProvider.updateUser(myUser);
        authProvider.updateUser(myUser);
        DialogUtils.hideLoading(context);
        DialogUtils.showMessage(context, 'Register Successfully ✔️ ',
            title: 'Success', posActionName: 'ok', posAction: () {
          Navigator.of(context).pushReplacementNamed(NavigationPage.routeName);
        });
        print('register successfully');
        print(credential.user?.uid ?? '');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          DialogUtils.hideLoading(context);
          DialogUtils.showMessage(context, 'The password provided is too weak.',
              title: 'Error',
              posActionName: 'ok');
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          DialogUtils.hideLoading(context);
          DialogUtils.showMessage(context, 'The account already exists for that email.',
              title: 'Error',
              posActionName: 'ok');
          print('The account already exists for that email.');
        }
      } catch (e) {
        DialogUtils.hideLoading(context);
        DialogUtils.showMessage(context, e.toString(),
            title: 'Error ',
            posActionName: 'ok');
        print(e);
      }


    }
  }
}