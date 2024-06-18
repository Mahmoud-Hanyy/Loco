import 'package:flutter/material.dart';
import 'package:loco/core/utils/assets.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/loco_button.dart';
import '../payment/payment_method.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//ignore: must_be_immutable
class AddToCart extends StatelessWidget {
  static const String routename = 'AddToCart';
  late String productName;
  late int price;
  int quantity = 1;
  AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Transform.scale(
          scale: 1.2,
          child: BackButton(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.cart,
          style: Styles.textOfLabel.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
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
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          LocoButton(
            onPressed: () {
              Navigator.pushNamed(context, PaymentMethod.routeName);
            },
            textOfButton: AppLocalizations.of(context)!.checkout,
            style: Styles.textStyle20.copyWith(
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ],
      ),
    );
  }
}
