import 'package:flutter/material.dart';
import 'package:loco/core/utils/assets.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/new_product_item.dart';
import '../cart/add_to_cart.dart';

//ignore:must_be_immutable
class HomePage extends StatelessWidget {
  late String productName;
  late int price;
  static const String routename = 'Home';
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Loco',
          style: Styles.textOfLabel.copyWith(
            color: Theme.of(context).colorScheme.primary,
          )
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 40, right: 0, left: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color:  Theme.of(context).colorScheme.background,
                          border: (Border.all(
                              color: Theme.of(context).colorScheme.primary, width: 2)),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 30,
                                )),
                             Text(
                              'Search for your product',
                              style: Styles.textStyle16.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(AddToCart.routename);
                        },
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Theme.of(context).colorScheme.primary,
                          size: 35,
                        )),
                  ],
                ),
              ),
              Center(
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.24,
                    width: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(Assets.photo1),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(26),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: const Center()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 0, bottom: 25, top: 10),
                    child: Text(
                      'Categories',
                      style: Styles.textStyle30.copyWith(
                        color: Theme.of(context).colorScheme.primary
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, bottom: 10),
                    child: Text(
                      'view all',
                      style: Styles.textStyle16.copyWith(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.height * 0.14,
                          decoration:BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(Assets.man),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Men',
                          style: Styles.textStyle16.copyWith(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.height * 0.14,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image:
                                  AssetImage(Assets.woman),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Text(
                          'Women',
                          style:Styles.textStyle16.copyWith(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.height * 0.14,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(Assets.kid),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Text(
                          'Kids',
                          style: Styles.textStyle16.copyWith(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.height * 0.14,
                          decoration:  BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(Assets.acc),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         Text(
                          'Accessories',
                          style:Styles.textStyle16.copyWith(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 0, bottom: 25, top: 10),
                    child: Text(
                      'New Products',
                      style: Styles.textStyle16.copyWith(
                        fontSize: 30,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
