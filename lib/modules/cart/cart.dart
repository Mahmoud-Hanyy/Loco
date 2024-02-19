import 'package:flutter/material.dart';

import '../../constants/colors.dart' as Colors;

class Cart extends StatelessWidget {
  static const String routename = 'Cart';
  late String productName;
  late int price;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Transform.scale(
          scale: 1.2,
          child: BackButton(
            color: Color(0xFF366A6A),
          ),
        ),
        title: Text(
          'Cart',
          style: TextStyle(
              fontFamily: 'Clash', fontSize: 40, color: Color(0xFF366A6A)),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.search,
              color: Color(0xFF366A6A),
              size: 35,
            ),
          )
        ],
      ),
      backgroundColor: Colors.Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // color: Colors.Colors.loco,
                height: 140,
                width: 95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.Colors.loco),
                child: Center(child: Text('Photo')),
              ),
              Column(
                children: [
                  Text(
                    productName = 'Hoodie 1',
                    style: TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'White | XL',
                    style: TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "${price = 123} EGP",
                    style: TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.Colors.loco.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.Colors.loco,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove_circle,
                            color: Colors.Colors.white,
                          )),
                      Text(
                        '${quantity}',
                        style:
                            TextStyle(color: Colors.Colors.white, fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            color: Colors.Colors.white,
                          )),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // color: Colors.Colors.loco,
                height: 140,
                width: 95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.Colors.loco),
                child: Center(child: Text('Photo')),
              ),
              Column(
                children: [
                  Text(
                    productName = 'Hoodie 1',
                    style: TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'White | XL',
                    style: TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "${price = 123} EGP",
                    style: TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.Colors.loco.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.Colors.loco,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove_circle,
                            color: Colors.Colors.white,
                          )),
                      Text(
                        '${quantity}',
                        style:
                            TextStyle(color: Colors.Colors.white, fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            color: Colors.Colors.white,
                          )),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
