import 'package:flutter/material.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/new_product_item.dart';
import '../cart/add_to_cart.dart';

//ignore:must_be_immutable
class HomePage extends StatelessWidget {
  late String productName;
  late int price;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'loco',
          style: Styles.textOfLabel
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: white,
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
                          color: white,
                          border: (Border.all(
                              color: loco, width: 2)),
                          boxShadow: [
                            BoxShadow(
                              color: loco.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  color: loco,
                                  size: 30,
                                )),
                            const Text(
                              'Search for your product',
                              style: TextStyle(
                                  color: Color(0xA05B5B5B), fontSize: 15),
                            ),
                          ],
                        )),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(AddToCart.routename);
                        },
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: loco,
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
                        image: AssetImage('lib/resources/images/photo1.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(26),
                      color: loco,
                    ),
                    child: const Center()),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 0, bottom: 25, top: 10),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          fontFamily: 'Clash',
                          fontSize: 30,
                          color: Color(0xFF366A6A),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, bottom: 10),
                    child: Text(
                      'view all',
                      style: TextStyle(color: Color(0xA6508576), fontSize: 15),
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
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/resources/images/man.png'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            color: loco,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Men',
                          style:
                              TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
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
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('lib/resources/images/woman.png'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            color: loco,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Women',
                          style:
                              TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
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
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/resources/images/kid.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: loco,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Kids',
                          style:
                              TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
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
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/resources/images/acc.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            color: loco,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Accessories',
                          style:
                              TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 0, bottom: 25, top: 10),
                    child: Text(
                      'New Products',
                      style: TextStyle(
                          fontFamily: 'Clash',
                          fontSize: 30,
                          color: Color(0xFF366A6A),
                          fontWeight: FontWeight.w300),
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