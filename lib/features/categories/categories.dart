import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../core/utils/styles.dart';
import '../../core/widgets/category_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../search/search_page.dart';

//ignore:must_be_immutable
class Categories extends StatefulWidget {
  const Categories({super.key});
  static const String routeName = "Categories";

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var jsonList;
  @override
  void initState() {
    super.initState();
    getData();
  }
  void getData()async{
    try{
      var response = await Dio().get('https://products-api-5.onrender.com/api/products');
      if(response.statusCode==200){
        if (!mounted) return;
        setState(() {
        jsonList=response.data["Clothes"]as List;
      });
      }else{
        print(response.statusCode);
      }
    }catch(e){
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
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, SearchPage.routename),
              child: Padding(
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
                          border: (Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 2)),
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
                              AppLocalizations.of(context)!
                                  .search_for_your_product,
                              style: Styles.textStyle16.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
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
                            color: Theme.of(context).colorScheme.background),
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
                        AppLocalizations.of(context)!.price,
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.background),
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
                        AppLocalizations.of(context)!.newest,
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.background),
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
                  itemCount: jsonList == null ? 0 : jsonList.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryItem(
                      price: jsonList[index]["Price"],
                      productName: jsonList[index]["Name"],
                      imagePath: jsonList[index]["imageUrl"],
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      )
    );
  }
}


