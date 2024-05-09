import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../provider/app_config_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            provider.changeLanguage('en');
          },
          child: provider.appLanguage == 'en'
              ? getSelectedItemWidget(AppLocalizations.of(context)!.english)
              : getUnselectedItemWidget(AppLocalizations.of(context)!.english),
        ),
        InkWell(
          onTap: () {
            provider.changeLanguage('ar');
          },
          child: provider.appLanguage == 'ar'
              ? getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
              : getUnselectedItemWidget(AppLocalizations.of(context)!.arabic),
        ),
      ],
    );
  }
}

Widget getSelectedItemWidget(String text) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.textStyle20,
        ),
        const Icon(Icons.check)
      ],
    ),
  );
}

Widget getUnselectedItemWidget(String text) {
  return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        text,
        style: Styles.textStyle20,
      ));
}
