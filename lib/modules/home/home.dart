import 'package:flutter/material.dart';

import '../../constants/colors.dart' as Colors;
import '../cart/cart.dart';
import '../product_details/product_details.dart';

class Home extends StatelessWidget {
  late String productName;
  late int price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Loco',
          style: TextStyle(
              fontFamily: 'Clash', fontSize: 50, color: Color(0xFF366A6A)),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, bottom: 40, right: 0, left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Colors.Colors.white,
                        border:
                            (Border.all(color: Colors.Colors.loco, width: 2)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.Colors.loco.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.Colors.loco,
                                size: 30,
                              )),
                          Text(
                            'Search for your product',
                            style: TextStyle(
                                color: Color(0xA05B5B5B), fontSize: 15),
                          ),
                        ],
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Cart.routename);
                      },
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.Colors.loco,
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
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.Colors.loco,
                  ),
                  child: Center(child: Text('photo1'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
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
                  padding: const EdgeInsets.only(right: 20, bottom: 10),
                  child: Text(
                    'view all',
                    style: TextStyle(color: Color(0xA6508576), fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.height * 0.14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.Colors.loco,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.height * 0.14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.Colors.loco,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.height * 0.14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.Colors.loco,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.12,
                ),
                Text(
                  'Women',
                  style: TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.21,
                ),
                Text(
                  'Men',
                  style: TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                Text(
                  'Kids',
                  style: TextStyle(color: Color(0xFF4C7E72), fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                            border: Border.all(color: Colors.Colors.loco),
                            borderRadius: BorderRadius.circular(13)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 150),
                              child: Text(
                                productName = 'Hoodie 1',
                                style: TextStyle(
                                    color: Color(0xFF4C7E72),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Text(
                              "${price = 123} EGP",
                              style: TextStyle(
                                  color: Color(0xFF4C7E72),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
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
                                      color: Colors.Colors.loco,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'View product',
                                        style: TextStyle(
                                            color: Colors.Colors.white,
                                            fontSize: 8),
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.Colors.loco,
                        height: 140,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.Colors.loco),
                        child: Center(child: Text('Photo')),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(ProductDetails.routename,
                        arguments: ProductDetailsArgs(
                            productName: 'Hoodie 2' /*[index]*/,
                            /* index: index,*/
                            price: 12 /*.[index]*/));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 215,
                        width: 180,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.Colors.loco),
                            borderRadius: BorderRadius.circular(13)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 150),
                              child: Text(
                                productName = 'hoodie2',
                                style: TextStyle(
                                    color: Color(0xFF4C7E72),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Text(
                              "${price = 12} EGP",
                              style: TextStyle(
                                  color: Color(0xFF4C7E72),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
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
                                      color: Colors.Colors.loco,
                                    ),
                                    child: Center(
                                      child: Text(
                                        'View product',
                                        style: TextStyle(
                                            color: Colors.Colors.white,
                                            fontSize: 8),
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.Colors.loco,

                        height: 140,

                        width: 180,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.Colors.loco),

                        child: Center(child: Text('Photo')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
