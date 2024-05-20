import 'package:flutter/material.dart';
import 'package:loco/domain/entities/ProductResponseEntity.dart';

import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/loco_button.dart';

class ProductDetails extends StatefulWidget {
  static const String routename = 'ProductDetails';
  final List<String> sizes = ['S', 'M', 'L', 'XL'];

  ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;
  String? selectedSize;
  bool addedFav = false;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ProductEntity;
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(color: black, width: 2),
                ),
                child: Image.network(args.imageUrl ?? ""),
              ),
              Padding(
                padding:
                EdgeInsets.symmetric(vertical: 0, horizontal: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        args.name ?? "",
                        style: const TextStyle(
                            color: black,
                            fontSize: 23,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "${args.price} EGP",
                          style: Styles.textStyle30.copyWith(
                              color: black,
                              fontSize: 25),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.4,),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                addedFav = !addedFav;
                              });
                            },
                            icon: Icon(
                              addedFav == true
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: Theme.of(context).colorScheme.primary,
                              size: 35,
                            )),

                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),

                ],
              ),
              // Row(
              //   children: [
              //     SizedBox(
              //       width: MediaQuery.of(context).size.width * 0.06,
              //     ),
              //     Text(
              //       args.description ?? "",
              //       style: TextStyle(color: Color(0xA65D5D5D), fontSize: 15),
              //     ),
              //   ],
              // ),
              //  Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.only(
              //           left: 23, right: 0, bottom: 20, top: 25),
              //       child: Text(
              //         'Size',
              //         style: TextStyle(
              //             fontFamily: 'Clash',
              //             fontSize: 30,
              //             color: Color(0xFF366A6A),
              //             fontWeight: FontWeight.w300),
              //       )
              //       ,),
              //       SizedBox(
              //         height: MediaQuery.of(context).size.height * 0.016,
              //       ),
              //
              //     ],
              //   ),

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
                  Text(args.description ?? "",
                      style: Styles.textStyle16
                          .copyWith(color: Colors.black, fontSize: 18)),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.12,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.sizes.length,
                  itemBuilder: (context, index) {
                    final size = widget.sizes[index];
                    return GestureDetector(
                      onTap: () => setState(() => selectedSize = size),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                            border: (Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1)),
                            shape: BoxShape.circle,
                            color: selectedSize == size
                                ? Theme.of(context).colorScheme.surface
                                : Theme.of(context).colorScheme.primary,
                          ),
                          child: Center(
                              child: Text(
                                size,
                                style: TextStyle(
                                    color: selectedSize == size
                                        ? Theme.of(context).colorScheme.primary
                                        : Theme.of(context).colorScheme.surface,
                                    fontSize: 18),
                              )),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, bottom: 20, top: 10),
                    child: Text('Color',
                        style: Styles.textStyle24.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        )),
                  ),
                  Text(
                    'White',
                    style: Styles.textStyle20.copyWith(
                      color: Colors.black,
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
