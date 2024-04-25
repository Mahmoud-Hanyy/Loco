import 'package:flutter/material.dart';
import 'package:loco/core/widgets/product_item.dart';
import '../../features/product_details/product_details.dart';
import '../utils/assets.dart';

class NewProductsItem extends StatelessWidget {
  const NewProductsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
              ProductDetails.routename,
              arguments: ProductDetailsArgs(
                  productName:
                  'Hoodie 1' /*[index], index: index*/,
                  price: 123 /*,index:index*/));
        },
        child: ProductItem(
            price: 123,
            productName: 'hoodie1',
            imagePath: Assets.hoodie1));
  }
}
