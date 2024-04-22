import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils/colors.dart';

//ignore: must_be_immutable
class ProductItem extends StatelessWidget {
  int price;
  String productName;
  String imagePath;

  ProductItem({super.key,
    required this.price,
    required this.productName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          children: [
            Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: 180,
          decoration: BoxDecoration(
              border: Border.all(color: loco),
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
                "$price EGP",
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
                        color: loco,
                      ),
                      child: const Center(
                        child: Text(
                          'View product',
                          style: TextStyle(
                              color: white, fontSize: 8),
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
              color: loco),
        ),
      ]),
    );
  }
}
