import 'package:flutter/material.dart';
import '../cart/add_to_cart.dart';
import '../product_details/product_details.dart';
import '../../constants/theme.dart' as Colors;

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
          'Loco',
          style: TextStyle(
              fontFamily: 'Clash', fontSize: 50, color: Colors.AppTheme.loco),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.AppTheme.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.AppTheme.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 40, right: 0, left: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.AppTheme.white,
                          border:
                          (Border.all(color: Colors.AppTheme.loco, width: 2)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.AppTheme.loco.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: const Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.AppTheme.loco,
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
                          color: Colors.AppTheme.loco,
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
                      color: Colors.AppTheme.loco,
                    ),
                    child: const Center()
                ),
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
                            color: Colors.AppTheme.loco,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Men',
                          style: TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.height * 0.14,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/resources/images/woman.png'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.AppTheme.loco,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Women',
                          style: TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10,),
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
                            color: Colors.AppTheme.loco,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Kids',
                          style: TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10,),
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
                            color: Colors.AppTheme.loco,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Accessories',
                          style: TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(ProductDetails.routename,
                            arguments: ProductDetailsArgs(
                                productName: 'Hoodie 1' /*[index], index: index*/,
                                price: 123 /*,index:index*/));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 215,
                            width: 180,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.AppTheme.loco),
                                borderRadius: BorderRadius.circular(13)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 150),
                                  child: Text(
                                    productName = 'Hoodie 1',
                                    style: const TextStyle(
                                        color: Color(0xFF4C7E72),
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                                Text(
                                  "${price = 123} EGP",
                                  style: const TextStyle(
                                      color: Color(0xFF4C7E72),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: MediaQuery.of(context).size.height *
                                            0.03,
                                        width: MediaQuery.of(context).size.width *
                                            0.23,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(26),
                                          color: Colors.AppTheme.loco,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'View product',
                                            style: TextStyle(
                                                color: Colors.AppTheme.white,
                                                fontSize: 8),
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 180,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('lib/resources/images/hoodie1.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(13),
                                color: Colors.AppTheme.loco),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(ProductDetails.routename,
                            arguments: ProductDetailsArgs(
                                productName: 'Hoodie 1' /*[index], index: index*/,
                                price: 123 /*,index:index*/));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 215,
                            width: 180,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.AppTheme.loco),
                                borderRadius: BorderRadius.circular(13)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 150),
                                  child: Text(
                                    productName = 'Hoodie 1',
                                    style: const TextStyle(
                                        color: Color(0xFF4C7E72),
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                                Text(
                                  "${price = 123} EGP",
                                  style: const TextStyle(
                                      color: Color(0xFF4C7E72),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: MediaQuery.of(context).size.height *
                                            0.03,
                                        width: MediaQuery.of(context).size.width *
                                            0.23,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(26),
                                          color: Colors.AppTheme.loco,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'View product',
                                            style: TextStyle(
                                                color: Colors.AppTheme.white,
                                                fontSize: 8),
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 180,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('lib/resources/images/hoodie1.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(13),
                                color: Colors.AppTheme.loco),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(ProductDetails.routename,
                            arguments: ProductDetailsArgs(
                                productName: 'Hoodie 1' /*[index], index: index*/,
                                price: 123 /*,index:index*/));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 215,
                            width: 180,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.AppTheme.loco),
                                borderRadius: BorderRadius.circular(13)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 150),
                                  child: Text(
                                    productName = 'Hoodie 1',
                                    style: const TextStyle(
                                        color: Color(0xFF4C7E72),
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                                Text(
                                  "${price = 123} EGP",
                                  style: const TextStyle(
                                      color: Color(0xFF4C7E72),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: MediaQuery.of(context).size.height *
                                            0.03,
                                        width: MediaQuery.of(context).size.width *
                                            0.23,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(26),
                                          color: Colors.AppTheme.loco,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'View product',
                                            style: TextStyle(
                                                color: Colors.AppTheme.white,
                                                fontSize: 8),
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 180,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('lib/resources/images/hoodie1.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(13),
                                color: Colors.AppTheme.loco),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(ProductDetails.routename,
                            arguments: ProductDetailsArgs(
                                productName: 'Hoodie 1' /*[index], index: index*/,
                                price: 123 /*,index:index*/));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 215,
                            width: 180,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.AppTheme.loco),
                                borderRadius: BorderRadius.circular(13)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 150),
                                  child: Text(
                                    productName = 'Hoodie 1',
                                    style: const TextStyle(
                                        color: Color(0xFF4C7E72),
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                                Text(
                                  "${price = 123} EGP",
                                  style: const TextStyle(
                                      color: Color(0xFF4C7E72),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        height: MediaQuery.of(context).size.height *
                                            0.03,
                                        width: MediaQuery.of(context).size.width *
                                            0.23,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(26),
                                          color: Colors.AppTheme.loco,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'View product',
                                            style: TextStyle(
                                                color: Colors.AppTheme.white,
                                                fontSize: 8),
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 140,
                            width: 180,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('lib/resources/images/hoodie1.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(13),
                                color: Colors.AppTheme.loco),
                          ),
                        ],
                      ),
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
