import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
import 'package:loco/core/widgets/view_product_button.dart';

//ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  int price;
  String productName;
  String imagePath;

  CategoryItem({
    super.key,
    required this.price,
    required this.productName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.008,
          ),
          CachedNetworkImage(
            imageUrl: imagePath,
            height: MediaQuery.of(context).size.height * 0.169,
            width: MediaQuery.of(context).size.width * 0.35,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            productName,
            style: Styles.textStyle16.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 13,
              ),
              overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 5,
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
          ViewProductButton(
            textOfButton: 'View Product',
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}

