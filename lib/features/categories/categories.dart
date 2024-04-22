import 'package:flutter/material.dart';
import '../../core/utils/colors.dart';
import '../../core/widgets/product_item.dart';

//ignore:must_be_immutable
class Categories extends StatelessWidget {
  const Categories({super.key});
  static const String routeName="Categories";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'loco',
            style: TextStyle(
                fontFamily: 'Clash', fontSize: 50, color: Color(0xFF366A6A)),
          ),
          centerTitle: true,
          toolbarHeight: 70,
          backgroundColor: white,
          elevation: 0,
        ),
        body: Container(
          color: white,
          child: Column(
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
                          color: white,
                          border:
                              (Border.all(color: loco, width: 2)),
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
                            Text(
                              'Search for your product',
                              style: TextStyle(
                                  color: loco.withOpacity(0.6), fontSize: 15),
                            ),
                          ],
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.filter_alt_outlined,
                          color: loco,
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
                      color: loco,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: light,
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
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
                          style: TextStyle(
                              fontSize: 15, color: white),
                        ),
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: loco,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: light,
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
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
                          style: TextStyle(
                              fontSize: 15, color: white),
                        ),
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: white,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: loco,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: light,
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
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
                          style: TextStyle(
                              fontSize: 15, color: white),
                        ),
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1 / 1.17
                        ///default 1/1
                        ),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return ProductItem(
                          price: 100,
                          productName: 'Hoodie1',
                          imagePath: 'lib/resources/images/hoodie1.png');
                    }),
              ),
              const SizedBox(height: 10,)
            ],
          ),
        ),
    );
  }
}
