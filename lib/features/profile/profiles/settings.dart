import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
class Settings extends StatelessWidget {
  const Settings({super.key});
  static const String routeName="Settings";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Settings',
                style: Styles.textOfLabel.copyWith(
                    color: Theme.of(context).colorScheme.primary
                )
                ,),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  width: MediaQuery.of(context).size.height*0.5,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                      )
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text('Change Language',
                          style: Styles.textStyle20.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      IconButton(
                          onPressed: (){
                          },
                          icon: const Icon(Icons.language_outlined)
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
