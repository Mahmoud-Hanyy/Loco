import 'package:flutter/material.dart';
import 'package:loco/components/button.dart';
import '../../constants/theme.dart' as Colors;
import '../navigation/navigation.dart';
import '../register/register.dart';

class LogIn extends StatelessWidget {
  static const String routeName='login';

  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('lib/resources/images/sign.png',
              height: 348,
              width: 350,
            ),
            Text('Welcome back !',style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email address',
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                    border:const OutlineInputBorder(borderSide: BorderSide(color: Colors.AppTheme.loco),),
                    prefixIcon: const Icon(Icons.email,color: Colors.AppTheme.loco,),
                ),
              ),
            ),
            const SizedBox(height: 20,),
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
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forget your password?',style: TextStyle(color: Colors.AppTheme.loco,fontSize: 15),
                  textAlign: TextAlign.right,),
              ],
            ),
            const SizedBox(height: 15,),
            LocoButton(
                buttonText: 'Log In',
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NavigationPage())
            );}),
            const SizedBox(height: 15,),
            Text('or login with',style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 10,),
            Image.asset('lib/resources/images/google.jpg',
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, RegisterScreen.routeName);
              },
              child: Text("Don't have an account ? Register",style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
