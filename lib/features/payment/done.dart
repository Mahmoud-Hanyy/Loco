import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
import '../../core/utils/assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PaymentDone extends StatelessWidget {
  const PaymentDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.done),
            Text(
              AppLocalizations.of(context)!.your_payment_is_done,
              style: Styles.textStyle30.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
