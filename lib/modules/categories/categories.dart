import 'package:flutter/material.dart';
import '../../constants/theme.dart' as Colors;

//ignore:must_be_immutable
class Categories extends StatelessWidget {
  late String productName;
  late int price;
  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loco',
          style: TextStyle(
              fontFamily: 'Clash', fontSize: 50, color: Color(0xFF366A6A)),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.AppTheme.white,
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
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.AppTheme.loco,
                        size: 35,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.AppTheme.loco,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.AppTheme.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 45,
                  width: 110,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Category',
                        style:
                        TextStyle(fontSize: 15, color: Colors.AppTheme.white),
                      ),
                      Icon(
                        Icons.expand_circle_down_outlined,
                        color: Colors.AppTheme.white,
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.AppTheme.loco,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.AppTheme.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 45,
                  width: 110,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Price',
                        style:
                        TextStyle(fontSize: 15, color: Colors.AppTheme.white),
                      ),
                      Icon(
                        Icons.expand_circle_down_outlined,
                        color: Colors.AppTheme.white,
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.AppTheme.loco,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.AppTheme.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 45,
                  width: 110,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Newest',
                        style:
                        TextStyle(fontSize: 15, color: Colors.AppTheme.white),
                      ),
                      Icon(
                        Icons.expand_circle_down_outlined,
                        color: Colors.AppTheme.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
                Stack(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.03,
                                  width:
                                  MediaQuery.of(context).size.width * 0.23,
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
                      // color: Colors.AppTheme.loco,
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
