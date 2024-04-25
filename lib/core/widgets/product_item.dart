import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
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
              border: Border.all(color: Theme.of(context).colorScheme.primary,),
              borderRadius: BorderRadius.circular(13)),
              child: Column(
                children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.195,
              ),
              Text(
                productName,
                style: Styles.textStyle16.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 13,
                )
              ),
              Text(
                "$price EGP",
                style: Styles.textStyle16.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 13,
                ),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child:  Center(
                        child: Text(
                          'View product',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.background, fontSize: 8),
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
