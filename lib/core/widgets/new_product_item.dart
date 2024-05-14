import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
import 'package:loco/core/widgets/view_product_button.dart';

//ignore: must_be_immutable
class NewProductItem extends StatelessWidget {
  int price;
  String productName;
  String imagePath;

  NewProductItem({
    super.key,
    required this.price,
    required this.productName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: imagePath,
              height: MediaQuery.of(context).size.height * 0.120,
              width: MediaQuery.of(context).size.width * 0.20,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(productName,
                style: Styles.textStyle16.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 13,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const SizedBox(
                width: 5,
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
                height: 10,
              ),
              ViewProductButton(
                textOfButton: 'View Product',
                onPressed: (){},
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

