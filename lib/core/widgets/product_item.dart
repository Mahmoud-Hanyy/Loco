import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';

import '../../domain/entities/ProductResponseEntity.dart';
import '../utils/colors.dart';

//ignore: must_be_immutable
class ProductItem extends StatelessWidget {
  ProductEntity productEntity;

  ProductItem({super.key, required this.productEntity});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: 180,
          decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
              ),
              borderRadius: BorderRadius.circular(13)),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.195,
              ),
              Text(productEntity.name ?? "",
                  style: Styles.textStyle16.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 13,
                  )),
              Text(
                "${productEntity.price} EGP",
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
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: loco, width: 1),
          ),
          child: Image.network(productEntity.imageUrl ?? ""),
        ),
      ]),
    );
  }
}
