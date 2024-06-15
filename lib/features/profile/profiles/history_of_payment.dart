import 'package:flutter/material.dart';
import '../../../core/utils/assets.dart';
import '../../../core/utils/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HistoryOfPayment extends StatelessWidget {
  const HistoryOfPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.history_of_payment,
            style: Styles.textStyle30.copyWith(
                color: Theme.of(context).colorScheme.primary, fontSize: 37),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(Assets.sweater, scale: 5),
                    const SizedBox(width: 30,),
                    Column(
                      children: [
                        Text(
                          'Aesthetic Sweeter',
                          style: Styles.textStyle24.copyWith(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '450 EGP',
                          style: Styles.textStyle16.copyWith(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Order is delivered ✅ ',
                          style: Styles.textStyle16.copyWith(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Sidi Gaber,Alexandria,Egypt',
                          style: Styles.textStyle16.copyWith(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
