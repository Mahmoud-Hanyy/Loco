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
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // color: loco,
                height: 140,
                width: 95,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(Assets.hoodie1), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(13),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: const Center(),
              ),
              Column(
                children: [
                  Text(productName = 'Hoodie 1',
                      style: Styles.textStyle30.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      )),
                  Text("${price = 123} EGP",
                      style: Styles.textStyle20.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(26),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            color: Theme.of(context).colorScheme.surface,
                          )),
                      Text(
                        '$quantity',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove_circle,
                            color: Theme.of(context).colorScheme.surface,
                          )),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // color: loco,
                height: 140,
                width: 95,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(Assets.hoodie1), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(13),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: const Center(),
              ),
              Column(
                children: [
                  Text(productName = 'Hoodie 1',
                      style: Styles.textStyle30.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      )),
                  Text('White | XL',
                      style: Styles.textStyle20.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.normal)),
                  Text("${price = 123} EGP",
                      style: Styles.textStyle20.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.normal)),
                ],
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(26),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            color: Theme.of(context).colorScheme.surface,
                          )),
                      Text(
                        '$quantity',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove_circle,
                            color: Theme.of(context).colorScheme.surface,
                          )),
                    ],
                  )),
            ],
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
