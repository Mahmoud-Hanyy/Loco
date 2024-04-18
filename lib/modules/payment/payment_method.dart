import 'package:flutter/material.dart';
import '../../constants/theme.dart' as Colors;

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}
class _PaymentMethodState extends State<PaymentMethod> {
  int _value=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Payment method'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value){
                    setState(() {
                      _value= value!;
                    });
                  },
                ),
                const SizedBox(width: 8,),
                const Text('Pay by card',style: TextStyle(fontSize: 18),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(child: Image.asset('lib/resources/images/visa.png'),
                    onTap: (){},),
                  const SizedBox(width: 15,),
                  InkWell(child: Image.asset('lib/resources/images/paypal.png',),
                    onTap: (){},),
                  const SizedBox(width: 15,),
                  InkWell(child: Image.asset('lib/resources/images/applepay.png'),
                    onTap: (){},),
                ],
              ),
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value){
                    setState(() {
                      _value=value!;
                    });
                  },
                ),
                const SizedBox(width: 8,),
                const Text('Cash on delivery',style: TextStyle(fontSize: 18),),
              ],
            ),
            const SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(child: Image.asset('lib/resources/images/cash.png'),
                onTap: (){},),
            ),
            const SizedBox(height: 23,),

            const Text('Vouchers',style: TextStyle(fontSize: 25),),
            const SizedBox(height: 13,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                hintText: 'Voucher',
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: ElevatedButton(onPressed: (){},
                style: const ButtonStyle( backgroundColor:MaterialStatePropertyAll<Color>(Colors.AppTheme.loco) ), child: const Text('Apply'),),
            ),
            const Divider(thickness: 0.3),
            const Row(
              children: [
                Text('SubTotal',style: TextStyle(fontSize: 18)),
                Padding(padding: EdgeInsets.only(left: 200)),
                Text('410.00 LE',style: TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 16,),
            const Row(
              children: [
                Text('Shipping fee',style: TextStyle(fontSize: 18)),
                Padding(padding: EdgeInsets.only(left: 170)),
                Text('30.00 LE',style: TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 16,),
            const Row(
              children: [
                Text('Discount',style: TextStyle(fontSize: 18)),
                Padding(padding: EdgeInsets.only(left: 200)),
                Text('-10 LE',style: TextStyle(fontSize: 18)),
              ],
            ),
            const Divider(thickness: 0.3,),
            const Row(
              children: [
                Text('Total',style: TextStyle(fontSize: 18)),
                Padding(padding: EdgeInsets.only(left: 235)),
                Text('430 LE',style: TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 25,),
            Center(
              child: ElevatedButton(onPressed: (){},
                style: const ButtonStyle( backgroundColor:MaterialStatePropertyAll<Color>(Colors.AppTheme.loco) ), child: const Text('Confirm'),),
            ),
          ],
        ),
      ) ,
    );
  }
}


