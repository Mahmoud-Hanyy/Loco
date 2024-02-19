import 'package:flutter/material.dart';

import '../../constants/colors.dart' as Colors;

class ProductDetails extends StatefulWidget {
  static const String routename = 'ProductDetails';

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ProductDetailsArgs;
    return Scaffold(
      backgroundColor: Colors.Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: Color(0xFF366A6A) // <-- SEE HERE
            ),
        title: Text(
          'Product Details',
          style: TextStyle(
              fontFamily: 'Clash', fontSize: 30, color: Color(0xFF366A6A)),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                // color: Colors.Colors.loco,
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.Colors.loco),
                child: Center(child: Text('Photo')),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${args.productName}",
                      style: TextStyle(
                          color: Color(0xFF4C7E72),
                          fontSize: 23,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "${args.price} EGP",
                      style: TextStyle(
                          color: Color(0xFF4C7E72),
                          fontSize: 23,
                          fontWeight: FontWeight.normal),
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
                  Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.38,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                quantitySub();
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.remove_circle,
                                color: Colors.Colors.white,
                              )),
                          Text(
                            '${quantity}',
                            style: TextStyle(
                                color: Colors.Colors.white, fontSize: 25),
                          ),
                          IconButton(
                              onPressed: () {
                                quantityAdd();
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.add_circle,
                                color: Colors.Colors.white,
                              )),
                        ],
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.Colors.loco,
                        size: 35,
                      ))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 23, right: 0, bottom: 10, top: 10),
                    child: Text(
                      'Description',
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
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Text(
                    'bla bla bla bla bla bla bla bla bla bla bla bla bla bla\nbla bla bla bla bla bla bla bla bla bla bla bla bla bla\nbla bla bla bla bla bla bla bla bla bla bla bla bla bla\nbla bla bla bla bla bla bla bla bla bla bla bla bla bla',
                    style: TextStyle(color: Color(0xA65D5D5D), fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 23, right: 0, bottom: 20, top: 25),
                    child: Text(
                      'Size',
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
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.Colors.loco.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.Colors.loco,
                    ),
                    child: Center(
                        child: Text(
                      'M',
                      style:
                          TextStyle(color: Colors.Colors.white, fontSize: 18),
                    )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.Colors.loco.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.Colors.loco,
                    ),
                    child: Center(
                        child: Text(
                      'L',
                      style:
                          TextStyle(color: Colors.Colors.white, fontSize: 18),
                    )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.Colors.loco.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      border: (Border.all(color: Colors.Colors.loco, width: 1)),
                      shape: BoxShape.circle,
                      color: Colors.Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      'XL',
                      style: TextStyle(color: Colors.Colors.loco, fontSize: 18),
                    )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.Colors.loco.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.Colors.loco,
                    ),
                    child: Center(
                        child: Text(
                      'XXL',
                      style:
                          TextStyle(color: Colors.Colors.white, fontSize: 18),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 23, right: 0, bottom: 20, top: 0),
                    child: Text(
                      'Color',
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
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.Colors.loco.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.Colors.black,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.Colors.loco.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      border: (Border.all(color: Colors.Colors.loco, width: 1)),
                      shape: BoxShape.circle,
                      color: Colors.Colors.white,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.Colors.loco.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Color(0xFFFF0000),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.Colors.loco,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.Colors.loco.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 6), // changes position of shadow
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Center(
                    child: Text(
                  'add to cart',
                  style: TextStyle(color: Colors.Colors.white, fontSize: 25),
                )),
              ),
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

  // int index;
  int price;

  ProductDetailsArgs({
    required this.productName /* required this.index*/,
    required this.price,
    /* required int index*/
  });
}
