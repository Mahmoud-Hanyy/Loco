import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loco/core/widgets/loco_button.dart';

import '../../core/utils/styles.dart';

class ProductDetails extends StatefulWidget {
  static const String routename = 'ProductDetails';

  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ProductDetailsArgs;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        leading: BackButton(color: Theme.of(context).colorScheme.primary),
        title: Text('Product Details',
            style: Styles.textStyle30.copyWith(
              color: Theme.of(context).colorScheme.primary,
            )),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.8,
                child: CachedNetworkImage(
                  imageUrl: args.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      args.productName,
                      style: Styles.textStyle30.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.016,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${args.price} EGP",
                          style: Styles.textStyle30.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 25),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              color: Theme.of(context).colorScheme.primary,
                              size: 35,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 23, right: 0, bottom: 10, top: 0),
                    child: Text('Description',
                        style: Styles.textStyle24.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Text('Good prodi;pkadnmsdnaopsdnadonasdnas',
                      style: Styles.textStyle16.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 14)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 23, right: 0, bottom: 20, top: 25),
                    child: Text('Size',
                        style: Styles.textStyle24.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        border: (Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1)),
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Center(
                          child: Text(
                        'S',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: 18),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        border: (Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1)),
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Center(
                          child: Text(
                        'M',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: 18),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        border: (Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1)),
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Center(
                          child: Text(
                        'L',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: 18),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        border: (Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1)),
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Center(
                          child: Text(
                        'XL',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            fontSize: 18),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 23, right: 0, bottom: 20, top: 10),
                    child: Text('Color',
                        style: Styles.textStyle24.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    'White',
                    style: Styles.textStyle20.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              LocoButton(textOfButton: 'Add to cart', onPressed: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }

  int quantityAdd() {
    if (quantity < 10) {
      quantity++;
    }
    return quantity;
  }

  int quantitySub() {
    if (quantity > 1) {
      quantity--;
    }
    return quantity;
  }
}

class ProductDetailsArgs {
  String productName;
  String imagePath;
  int price;

  ProductDetailsArgs({
    required this.productName /* required this.index*/,
    required this.price,
    required this.imagePath,
    /* required int index*/
  });
}
