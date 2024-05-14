import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:loco/core/utils/assets.dart';
import 'package:loco/features/categories/categories.dart';
import 'package:loco/features/search/search_page.dart';
import '../../core/utils/styles.dart';
import '../cart/add_to_cart.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//ignore:must_be_immutable
class HomePage extends StatefulWidget {
  static const String routename = 'Home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var jsonList;
  void getData()async{
    try{
      var response = await Dio().get('https://products-api-5.onrender.com/api/products');
      if(response.statusCode==200){
        if (!mounted) return;
        setState(() {
          jsonList=response.data["Clothes"] as List ;
        });
      }else{
        print(response.statusCode);
      }
    }catch(e){
      print(e);
    }
  }

  final List<String> imageList = [
    Assets.photo1,
    Assets.asili,
    Assets.tomato,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(AppLocalizations.of(context)!.loco,
                style: Styles.textOfLabel.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                )),
            centerTitle: true,
            toolbarHeight: 70,
            backgroundColor: Theme.of(context).colorScheme.background,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Container(
              color: Theme.of(context).colorScheme.background,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, SearchPage.routename),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 40, right: 0, left: 0),
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
                              onPressed: () {
                                Navigator.of(context).pushNamed(AddToCart.routename);
                              },
                              icon: Icon(
                                Icons.shopping_cart_outlined,
                                color: Theme.of(context).colorScheme.primary,
                                size: 35,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.24,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.background,
                      ),
                      child: CarouselSlider(
                          items: [
                            Image.asset(
                              Assets.asili,
                            ),
                            Image.asset(
                              Assets.photo1,
                            ),
                            Image.asset(
                              Assets.tomato,
                            ),
                            Image.asset(
                              Assets.donna,
                            ),
                          ],
                          options: (CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 2),
                            enlargeFactor: 2,
                            enlargeCenterPage: true,
                          ))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 0, bottom: 25, top: 10),
                        child: Text(AppLocalizations.of(context)!.categories,
                            style: Styles.textStyle30.copyWith(
                                color: Theme.of(context).colorScheme.primary)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 10),
                        child: TextButton(
                          child: Text(
                            AppLocalizations.of(context)!.view_all,
                            style: Styles.textStyle16.copyWith(
                              fontSize: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(Categories.routeName);
                          },
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
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: MediaQuery.of(context).size.height * 0.14,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(Assets.man),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              AppLocalizations.of(context)!.men,
                              style: Styles.textStyle16.copyWith(
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: MediaQuery.of(context).size.height * 0.14,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(Assets.woman),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              AppLocalizations.of(context)!.women,
                              style: Styles.textStyle16.copyWith(
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: MediaQuery.of(context).size.height * 0.14,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(Assets.kid),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              AppLocalizations.of(context)!.kids,
                              style: Styles.textStyle16.copyWith(
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.14,
                              width: MediaQuery.of(context).size.height * 0.14,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(Assets.acc),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              AppLocalizations.of(context)!.accessories,
                              style: Styles.textStyle16.copyWith(
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 0, bottom: 25, top: 10),
                        child: Text(
                          AppLocalizations.of(context)!.new_products,
                          style: Styles.textStyle16.copyWith(
                              fontSize: 30,
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
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
