import 'package:flutter/material.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/product_item.dart';

//ignore:must_be_immutable
class Categories extends StatelessWidget {
  const Categories({super.key});
  static const String routeName="Categories";
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
        body: Container(
          color: Theme.of(context).colorScheme.background,
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
                          color: Theme.of(context).colorScheme.background,
                          border:
                              (Border.all(color: Theme.of(context).colorScheme.primary, width: 2)),
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
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary.withOpacity(0.6), fontSize: 15),
                            ),
                          ],
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_alt_outlined,
                          color: Theme.of(context).colorScheme.primary,
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
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 45,
                    width: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Category',
                          style: TextStyle(
                              fontSize: 15, color: Theme.of(context).colorScheme.background),
                        ),
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: Theme.of(context).colorScheme.background,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 45,
                    width: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                              fontSize: 15, color: Theme.of(context).colorScheme.background),
                        ),
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: Theme.of(context).colorScheme.background,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 45,
                    width: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Newest',
                          style: TextStyle(
                              fontSize: 15, color: Theme.of(context).colorScheme.background),
                        ),
                        Icon(
                          Icons.expand_circle_down_outlined,
                          color: Theme.of(context).colorScheme.background,
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
