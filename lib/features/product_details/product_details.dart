import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loco/domain/entities/ProductResponseEntity.dart';
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
                  border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
                ),
                child: CachedNetworkImage(
                  imageUrl: args.imageUrl ?? "",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        args.name ?? "",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 23,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${args.price} EGP",
                          style: Styles.textStyle30.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.4,),
                        Expanded(
                          child: IconButton(
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
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
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
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Expanded(
                    child: Text(args.description ?? "",
                        style: Styles.textStyle16.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                        ),
                    ),
                  ),
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
                          fontWeight: FontWeight.bold,
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Text('Available colors :',
                      style: Styles.textStyle24.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    width: 50,
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
