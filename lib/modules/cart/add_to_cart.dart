import 'package:flutter/material.dart';
import 'package:loco/components/button.dart';
import '../../../constants/theme.dart' as Colors;

//ignore: must_be_immutable
class AddToCart extends StatelessWidget {
  static const String routename = 'AddToCart';
  late String productName;
  late int price;
  int quantity = 1;
  AddToCart({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Transform.scale(
          scale: 1.2,
          child: const BackButton(
            color: Color(0xFF366A6A),
          ),
        ),
        title: const Text(
          'Cart',
          style: TextStyle(
              fontFamily: 'Clash', fontSize: 40, color: Color(0xFF366A6A)),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.AppTheme.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.search,
              color: Color(0xFF366A6A),
              size: 35,
            ),
          )
        ],
      ),
      backgroundColor: Colors.AppTheme.white,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // color: Colors.AppTheme.loco,
                height: 140,
                width: 95,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('lib/resources/images/hoodie1.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.AppTheme.loco),
                child: const Center(),
              ),
              Column(
                children: [
                  Text(
                    productName = 'Hoodie 1',
                    style: const TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  const Text(
                    'White | XL',
                    style: TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "${price = 123} EGP",
                    style: const TextStyle(
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
                        color: Colors.AppTheme.loco.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.AppTheme.loco,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.AppTheme.white,
                          )),
                      Text(
                        '$quantity',
                        style:
                        const TextStyle(color: Colors.AppTheme.white, fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.AppTheme.white,
                          )),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // color: Colors.AppTheme.loco,
                height: 140,
                width: 95,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('lib/resources/images/hoodie1.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.AppTheme.loco),
                child: const Center(),
              ),
              Column(
                children: [
                  Text(
                    productName = 'Hoodie 1',
                    style: const TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 25,
                        fontWeight: FontWeight.normal),
                  ),
                  const Text(
                    'White | XL',
                    style: TextStyle(
                        color: Color(0xFF4C7E72),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "${price = 123} EGP",
                    style: const TextStyle(
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
                        color: Colors.AppTheme.loco.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.AppTheme.loco,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.AppTheme.white,
                          )),
                      Text(
                        '$quantity',
                        style:
                        const TextStyle(color: Colors.AppTheme.white, fontSize: 25),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle,
                            color: Colors.AppTheme.white,
                          )),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          LocoButton(
              buttonText: 'Checkout',
              onPressed: (){},
          ),
        ],
      ),
    );
  }
}
