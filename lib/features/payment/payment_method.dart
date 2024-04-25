import 'package:flutter/material.dart';
import 'package:loco/core/widgets/loco_button.dart';
import 'package:loco/features/payment/done.dart';

import '../../core/utils/assets.dart';
import '../../core/utils/styles.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});
  static const String routeName="Pay";
  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}
class _PaymentMethodState extends State<PaymentMethod> {
  int _value=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Payment Method ',
            style: Styles.textStyle30.copyWith(
              color: Theme.of(context).colorScheme.primary,
            )
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      body: Container(
        color:Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                    onChanged: (value){
                      setState(() {
                        _value= value!;
                      });
                    },
                  ),
                  const SizedBox(width: 8,),
                   Text('Pay by card',
                    style: Styles.textStyle16.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    )
                   ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(child: Image.asset(Assets.visa),
                      onTap: (){},),
                    const SizedBox(width: 15,),
                    InkWell(child: Image.asset(Assets.paypal),
                      onTap: (){},),
                    const SizedBox(width: 15,),
                    InkWell(child: Image.asset(Assets.apple),
                      onTap: (){},),
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
                    onChanged: (value){
                      setState(() {
                        _value=value!;
                      });
                    },
                  ),
                  const SizedBox(width: 8,),
                  Text('Cash on delivery',
                      style:Styles.textStyle16.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ) ),
                ],
              ),
              const SizedBox(height: 23,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Vouchers',
                    style: Styles.textStyle30.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold
                ),
                ),
              ),
              const SizedBox(height: 13,),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width*0.95,
                child: TextFormField(
                  decoration: InputDecoration(
                    focusColor: Theme.of(context).colorScheme.primary,
                    fillColor: Theme.of(context).colorScheme.primary,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: 'Voucher',
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: LocoButton(textOfButton: 'Apply', onPressed: (){},)
              ),
              const Divider(thickness: 0.3),
              Row(
                children: [
                  Text('SubTotal',
                    style:Styles.textStyle18.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                  ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 200)),
                  Text('410.00 LE',
                    style: Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
               Row(
                children: [
                  Text('Shipping fee',style:Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),),
                  const Padding(padding: EdgeInsets.only(left: 170)),
                  Text('30.00 LE',style:Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),),
                ],
              ),
              const SizedBox(height: 16,),
               Row(
                children: [
                  Text('Discount',style:Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),),
                  const Padding(padding: EdgeInsets.only(left: 200)),
                  Text('-10 LE',style:Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),),
                ],
              ),
              const Divider(thickness: 0.8,),
               Row(
                children: [
                  Text('Total',style:Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),),
                  const Padding(padding: EdgeInsets.only(left: 235)),
                  Text('430 LE',style:Styles.textStyle18.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),),
                ],
              ),
              const SizedBox(height: 25,),
              Center(
                child: LocoButton(textOfButton: 'Confirm', onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentDone(),
                      )
                  );
                },)
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}


