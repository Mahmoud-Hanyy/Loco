import 'package:flutter/material.dart';
import 'package:loco/core/utils/colors.dart';
import 'package:loco/core/utils/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/features/profile/profiles/language_bottom_sheet.dart';
import 'package:loco/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  static const String routeName="Settings";

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.settings,
                  style: Styles.textOfLabel.copyWith(
                      color: Theme.of(context).colorScheme.primary
                  )
                  ,),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.15,
                      width: MediaQuery.of(context).size.height*0.5,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                          )
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(AppLocalizations.of(context)!.change_language,
                                  style: Styles.textStyle20.copyWith(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            
                            InkWell(
                              onTap: (){
                                showLanguageBottomSheet();
                              },
                              child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: white,
                                            
                              ),
                              child: SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(provider.appLanguage=='en'?
                                      AppLocalizations.of(context)!.english:
                                      AppLocalizations.of(context)!.arabic,
                                      style: Styles.textStyle20,),
                                    const Icon(Icons.arrow_drop_down,
                                      color: loco,)
                                                    
                                  ],
                                ),
                              ),
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context)=>const LanguageBottomSheet());
  }
}