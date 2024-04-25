import 'package:flutter/material.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/start_button.dart';
import '../log_in/log_in.dart';
import '../navigation/navigation.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName='registerScreen';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height*0.45 ;
    var width = MediaQuery.of(context).size.width*0.85 ;
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
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
                child: Text('Register',
                    style: Styles.textOfLabel.copyWith(
                      fontWeight: FontWeight.bold
                    ))),
             const SizedBox(height: 5,),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal:25),
                child: Text('Register to enjoy our features',style: Styles.textStyle20)),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'First name',
                  hintStyle: Styles.textStyle16,
                  border: OutlineInputBorder(borderSide: BorderSide(color: loco),),
                  prefixIcon: Icon(Icons.person,color: loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Last name',
                  hintStyle: Styles.textStyle16,
                  border: OutlineInputBorder(borderSide: BorderSide(color: loco),),
                  prefixIcon: Icon(Icons.person,color: loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email address',
                  hintStyle: Styles.textStyle16,
                  border: OutlineInputBorder(borderSide: BorderSide(color: loco),),
                  prefixIcon: Icon(Icons.email,color: loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: Styles.textStyle16,
                  border: OutlineInputBorder(borderSide: BorderSide(color: loco),),
                  prefixIcon: Icon(Icons.lock,color: loco,),
                  suffixIcon: Icon(Icons.visibility_off,color: loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: Styles.textStyle16,
                  border: OutlineInputBorder(borderSide: BorderSide(color: loco),),
                  prefixIcon: Icon(Icons.lock,color: loco,),
                  suffixIcon: Icon(Icons.visibility_off,color: loco,),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Center(
              child: StartButton(
                onPressed: () {
                  Navigator.pushNamed(context, NavigationPage.routeName);
                },
                textOfButton: 'Register',
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
                    child: Text('Already have an account ? Login',style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold
                    ))),
              ],
            )
          ],
        ),
      ),
    ) ;
  }
}