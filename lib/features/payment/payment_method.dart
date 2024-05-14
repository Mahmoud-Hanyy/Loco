import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loco/core/widgets/loco_button.dart';
import '../../core/utils/assets.dart';
import '../../core/utils/styles.dart';
import 'done.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});
  static const String routeName = "Pay";
  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.payment_method,
            style: Styles.textStyle30.copyWith(
              color: Theme.of(context).colorScheme.primary,
            )),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      body: Container(
        width: 800,
        height: 800,
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio(
                      activeColor: Theme.of(context).colorScheme.primary,
                      focusColor: Theme.of(context).colorScheme.primary,
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value! ;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(AppLocalizations.of(context)!.pay_by_card,
                        style: Styles.textStyle16.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(
                        child: Image.asset(Assets.visa),
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        child: Image.asset(Assets.paypal),
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        child: Image.asset(Assets.apple),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      activeColor: Theme.of(context).colorScheme.primary,
                      focusColor: Theme.of(context).colorScheme.primary,
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(AppLocalizations.of(context)!.cash_on_delivery,
                        style: Styles.textStyle16.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppLocalizations.of(context)!.vouchers,
                    style: Styles.textStyle30.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusColor: Theme.of(context).colorScheme.primary,
                      fillColor: Theme.of(context).colorScheme.primary,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: AppLocalizations.of(context)!.voucher,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: LocoButton(
                  textOfButton: AppLocalizations.of(context)!.apply,
                  onPressed: () {},
                )),
                const Divider(thickness: 0.3),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.subtotal,
                      style: Styles.textStyle18.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 200)),
                    Text(
                      '410.00 LE',
                      style: Styles.textStyle18.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.shipping_fee,
                      style: Styles.textStyle18.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 170)),
                    Text(
                      '40.00 LE',
                      style: Styles.textStyle18.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.discount,
                      style: Styles.textStyle18.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 200)),
                    Text(
                      '-50 LE',
                      style: Styles.textStyle18.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 0.8,
                ),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.total,
                      style: Styles.textStyle18.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 235)),
                    Text(
                      '400 LE',
                      style: Styles.textStyle18.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                    child: LocoButton(
                  textOfButton: AppLocalizations.of(context)!.confirm,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentDone(),
                        ));
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
