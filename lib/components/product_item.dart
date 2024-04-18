import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/theme.dart' as Colors;

class ProductItem extends StatelessWidget {
  int price;
  String productName;
  String imagePath;

  ProductItem({
    required this.price,
    required this.productName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: 180,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.AppTheme.loco),
                borderRadius: BorderRadius.circular(13)),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.195,
                ),
                Text(
                  productName,
                  style: const TextStyle(
                      color: Color(0xFF4C7E72),
                      fontSize: 13,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  "${price} EGP",
                  style: const TextStyle(
                      color: Color(0xFF4C7E72),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.width * 0.23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.AppTheme.loco,
                        ),
                        child: const Center(
                          child: Text(
                            'View product',
                            style: TextStyle(
                                color: Colors.AppTheme.white, fontSize: 8),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.19,
            width: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(13),
                color: Colors.AppTheme.loco),
          ),
        ]),
      ],
    );
  }
}
