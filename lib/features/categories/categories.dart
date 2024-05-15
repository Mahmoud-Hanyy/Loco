import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/features/product_details/product_details.dart';

import '../../core/utils/styles.dart';
import '../../core/widgets/category_item.dart';

//ignore:must_be_immutable
class Categories extends StatefulWidget {
  const Categories({super.key});

  static const String routeName = "Categories";

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List jsonList = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      var response =
          await Dio().get('https://products-api-5.onrender.com/api/products');
      if (response.statusCode == 200) {
        if (!mounted) return;
        setState(() {
          jsonList = response.data["Clothes"] as List;
        });
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(AppLocalizations.of(context)!.categories,
            style: Styles.textOfLabel.copyWith(
              color: Theme.of(context).colorScheme.primary,
            )),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.surface,
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
                        color: Theme.of(context).colorScheme.surface,
                        border: (Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2)),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)!
                              .search_for_your_product,
                          hintStyle: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          border: InputBorder.none,
                        ),
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
                        AppLocalizations.of(context)!.category,
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.surface),
                      ),
                      Icon(
                        Icons.expand_circle_down_outlined,
                        color: Theme.of(context).colorScheme.surface,
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
                        AppLocalizations.of(context)!.price,
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.surface),
                      ),
                      Icon(
                        Icons.expand_circle_down_outlined,
                        color: Theme.of(context).colorScheme.surface,
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
                        AppLocalizations.of(context)!.newest,
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.surface),
                      ),
                      Icon(
                        Icons.expand_circle_down_outlined,
                        color: Theme.of(context).colorScheme.surface,
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
                  itemCount: jsonList.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(ProductDetails.routename,
                                arguments: ProductDetailsArgs(
                                  price: jsonList[index]["Price"],
                                  productName: jsonList[index]["Name"],
                                  imagePath: jsonList[index]["imageUrl"],
                                ));
                      },
                      child: CategoryItem(
                        price: jsonList[index]["Price"],
                        productName: jsonList[index]["Name"],
                        imagePath: jsonList[index]["imageUrl"],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
