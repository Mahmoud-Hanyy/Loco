import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';

import '../../core/utils/assets.dart';
<<<<<<< HEAD
=======
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
>>>>>>> origin/main

class PaymentDone extends StatelessWidget {
  const PaymentDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.done),
<<<<<<< HEAD
            Text('Your payment is done',
              style: Styles.textStyle30.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
=======
            Text(AppLocalizations.of(context)!.your_payment_is_done,
              style: Styles.textStyle30.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold
>>>>>>> origin/main
              ),
            ),
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> origin/main
