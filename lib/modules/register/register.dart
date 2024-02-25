import 'package:flutter/material.dart';
import 'package:loco/components/button.dart';
import 'package:loco/modules/log_in/log_in.dart';
import '../../constants/theme.dart' as Colors;
import '../navigation/navigation.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName='registerScreen';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.AppTheme.white,
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
                          height: 400,
                          width: 400,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:AssetImage('lib/resources/images/blob.png') )
                          ),
                        )
                    )
                  ],
                )
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:25),
                child: Text('Register',style: Theme.of(context).textTheme.bodyLarge)),
             const SizedBox(height: 5,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:25),
                child: Text('Register to enjoy our features',style: Theme.of(context).textTheme.bodyMedium)),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'First name',
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.AppTheme.loco),),
                  prefixIcon: const Icon(Icons.person,color: Colors.AppTheme.loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Last name',
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.AppTheme.loco),),
                  prefixIcon: const Icon(Icons.person,color: Colors.AppTheme.loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email address',
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.AppTheme.loco),),
                  prefixIcon: const Icon(Icons.email,color: Colors.AppTheme.loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.AppTheme.loco),),
                  prefixIcon: const Icon(Icons.lock,color: Colors.AppTheme.loco,),
                  suffixIcon: const Icon(Icons.visibility_off,color: Colors.AppTheme.loco,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.AppTheme.loco),),
                  prefixIcon: const Icon(Icons.lock,color: Colors.AppTheme.loco,),
                  suffixIcon: const Icon(Icons.visibility_off,color: Colors.AppTheme.loco,),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Center(
              child: LocoButton(buttonText: 'Register',
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const NavigationPage())
                      );
                  }),
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
                    child: Text('Have an account ? Login',style: Theme.of(context).textTheme.bodySmall)),
              ],
            )
          ],
        ),
      ),
    ) ;
  }
}