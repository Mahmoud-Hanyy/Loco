import 'package:flutter/material.dart';
import 'package:loco/core/utils/colors.dart';


class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Pay By Card'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Name on Card',style: TextStyle(fontSize: 20),),
                const SizedBox(height: 8,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      hintText: 'Name',
                      suffixIcon: const Icon(Icons.star,size: 10,)
                  ),
                ),
                const SizedBox(height: 25,),
                const Text('Number on Card',style: TextStyle(fontSize: 20),),
                const SizedBox(height: 8,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      hintText: '0000 0000 0000 0000',
                      suffixIcon: const Icon(Icons.star,size: 10,)
                  ),
                ),
                const SizedBox(height: 25,),
                const Text('Expiry date',style: TextStyle(fontSize: 20),),
                const SizedBox(height: 8,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      hintText: '8/23',
                      suffixIcon: const Icon(Icons.star,size: 10,)
                  ),
                ),
                const SizedBox(height: 25,),
                const Text('CVC',style: TextStyle(fontSize: 20),),
                const SizedBox(height: 8,),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      hintText: '255',
                      suffixIcon: const Icon(Icons.star,size: 10,)
                  ),
                ),
                const SizedBox(height: 25,),
                ElevatedButton(onPressed: (){},
                  style: const ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll<Color>(loco)),
                  child: const Text('Confirm'),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
