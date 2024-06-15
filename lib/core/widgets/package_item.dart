import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
import 'package:loco/core/widgets/loco_button.dart';

//ignore:must_be_immutable
class PackageItem extends StatelessWidget {
  PackageItem({super.key, required this.text, required this.price});

  String text = "";
  String price = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(color: Theme.of(context).colorScheme.primary),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: Styles.textStyle16.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            price,
            style: Styles.textStyle16.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          LocoButton(textOfButton: "Learn More", onPressed: () {}),
        ],
      ),
    );
  }
}
