import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
import 'package:loco/core/widgets/view_product_button.dart';
import '../../domain/entities/ProductResponseEntity.dart';

//ignore: must_be_immutable
class ProductItem extends StatelessWidget {
  ProductEntity productEntity;

  ProductItem({super.key, required this.productEntity});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
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
                    overflow: TextOverflow.ellipsis,
                    fontSize: 13,
                  )),
              const SizedBox(
                height: 5,
              ),
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
              ViewProductButton(
                  textOfButton: 'View Product',
                  onPressed: (){}
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.19,
          width: 180,
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 1
            ),
          ),
          child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: productEntity.imageUrl ?? "",
          ),
        ),
      ]),
    );
  }
}