import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/core/utils/assets.dart';
import 'package:loco/domain/di.dart';
import 'package:loco/features/home/cubit/home_tab_states.dart';
import 'package:loco/features/home/cubit/home_tab_view_model.dart';
import 'package:loco/features/search/products_search_delegate.dart';

import '../../core/utils/styles.dart';
import '../../core/widgets/new_product_item.dart';
import '../cart/add_to_cart.dart';

//ignore:must_be_immutable
class HomePage extends StatelessWidget {
  HomeTabViewModel viewModel =
      HomeTabViewModel(getAllCategoryUseCase: injectGetAllCategoriesUseCases());
  late String productName;
  late int price;
  static const String routename = 'Home';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabViewModel, HomeTabStates>(
        bloc: viewModel..getCategories(),
        builder: (context, state) => viewModel.categoriesList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar: AppBar(
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
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 40, right: 0, left: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(26),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                    border: (Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        width: 2)),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () => showSearch(
                                              context: context,
                                              delegate:
                                                  ProductsSearchDelegate()),
                                          icon: Icon(
                                            Icons.search,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            size: 30,
                                          )),
                                      Text(
                                        AppLocalizations.of(context)!
                                            .search_for_your_product,
                                        style: Styles.textStyle16.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),
                                    ],
                                  )),
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(AddToCart.routename);
                                  },
                                  icon: Icon(
                                    Icons.shopping_cart_outlined,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 35,
                                  )),
                            ],
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
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 0, bottom: 25, top: 10),
                              child: Text(
                                  AppLocalizations.of(context)!.categories,
                                  style: Styles.textStyle30.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, bottom: 10),
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  AppLocalizations.of(context)!.view_all,
                                  style: Styles.textStyle16.copyWith(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.14,
                                    width: MediaQuery.of(context).size.height *
                                        0.14,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(Assets.man),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: BoxShape.circle,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.men,
                                    style: Styles.textStyle16.copyWith(
                                      fontSize: 15,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.14,
                                    width: MediaQuery.of(context).size.height *
                                        0.14,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(Assets.woman),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: BoxShape.circle,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.women,
                                    style: Styles.textStyle16.copyWith(
                                      fontSize: 15,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.14,
                                    width: MediaQuery.of(context).size.height *
                                        0.14,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(Assets.kid),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: BoxShape.circle,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.kids,
                                    style: Styles.textStyle16.copyWith(
                                      fontSize: 15,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.14,
                                    width: MediaQuery.of(context).size.height *
                                        0.14,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(Assets.acc),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: BoxShape.circle,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.accessories,
                                    style: Styles.textStyle16.copyWith(
                                      fontSize: 15,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
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
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              // NewProductsItem(),
                              SizedBox(
                                width: 15,
                              ),
                              // NewProductsItem(),
                              SizedBox(
                                width: 15,
                              ),
                              // NewProductsItem(),
                              SizedBox(
                                width: 15,
                              ),
                              // NewProductsItem(),
                              SizedBox(
                                width: 15,
                              ),
                              // NewProductsItem(),
                              SizedBox(
                                width: 15,
                              ),
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
              )
        // Container(
        //   color: Theme.of(context).colorScheme.background,
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding:
        //         const EdgeInsets.only(top: 20, bottom: 40, right: 0, left: 0),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             Container(
        //                 height: MediaQuery.of(context).size.height * 0.07,
        //                 width: MediaQuery.of(context).size.width * 0.8,
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(26),
        //                   color: Theme.of(context).colorScheme.background,
        //                   border:
        //                   (Border.all(color: Theme.of(context).colorScheme.primary, width: 2)),
        //                 ),
        //                 child: Row(
        //                   children: [
        //                     IconButton(
        //                         onPressed: () {},
        //                         icon: Icon(
        //                           Icons.search,
        //                           color: Theme.of(context).colorScheme.primary,
        //                           size: 30,
        //                         )),
        //                     Text(
        //                       AppLocalizations.of(context)!.search_for_your_product,
        //                       style: TextStyle(
        //                           color: Theme.of(context).colorScheme.primary.withOpacity(0.6), fontSize: 15),
        //                     ),
        //                   ],
        //                 )),
        //             IconButton(
        //                 onPressed: () {},
        //                 icon: Icon(
        //                   Icons.filter_alt_outlined,
        //                   color: Theme.of(context).colorScheme.primary,
        //                   size: 35,
        //                 )),
        //           ],
        //         ),
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           Container(
        //             decoration: BoxDecoration(
        //               color: Theme.of(context).colorScheme.primary,
        //               borderRadius: BorderRadius.circular(8),
        //             ),
        //             height: 45,
        //             width: 110,
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               children: [
        //                 Text(
        //                   AppLocalizations.of(context)!.category,
        //                   style: TextStyle(
        //                       fontSize: 15, color: Theme.of(context).colorScheme.background),
        //                 ),
        //                 Icon(
        //                   Icons.expand_circle_down_outlined,
        //                   color: Theme.of(context).colorScheme.background,
        //                 )
        //               ],
        //             ),
        //           ),
        //           Container(
        //             decoration: BoxDecoration(
        //               color: Theme.of(context).colorScheme.primary,
        //               borderRadius: BorderRadius.circular(8),
        //             ),
        //             height: 45,
        //             width: 110,
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               children: [
        //                 Text(
        //                   AppLocalizations.of(context)!.price,
        //                   style: TextStyle(
        //                       fontSize: 15, color: Theme.of(context).colorScheme.background),
        //                 ),
        //                 Icon(
        //                   Icons.expand_circle_down_outlined,
        //                   color: Theme.of(context).colorScheme.background,
        //                 )
        //               ],
        //             ),
        //           ),
        //           Container(
        //             decoration: BoxDecoration(
        //               color: Theme.of(context).colorScheme.primary,
        //               borderRadius: BorderRadius.circular(8),
        //             ),
        //             height: 45,
        //             width: 110,
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               children: [
        //                 Text(
        //                   AppLocalizations.of(context)!.newest,
        //                   style: TextStyle(
        //                       fontSize: 15, color: Theme.of(context).colorScheme.background),
        //                 ),
        //                 Icon(
        //                   Icons.expand_circle_down_outlined,
        //                   color: Theme.of(context).colorScheme.background,
        //                 )
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //       const SizedBox(
        //         height: 20,
        //       ),
        //       Expanded(
        //         child: GridView.builder(
        //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //                 crossAxisCount: 2,
        //                 mainAxisSpacing: 20,
        //                 childAspectRatio: 1 / 1.17
        //               ///default 1/1
        //             ),
        //             itemCount: 10,
        //             itemBuilder: (BuildContext context, int index) {
        //               return ProductItem(
        //                   price: 100,
        //                   productName: 'Hoodie1',
        //                   imagePath: 'lib/resources/images/hoodie1.png');
        //             }),
        //       ),
        //       const SizedBox(height: 10,)
        //     ],
        //   ),
        // )

        );
    Scaffold(
      appBar: AppBar(
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
              Padding(
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
              SizedBox(
                height: 24,
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
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        AppLocalizations.of(context)!.view_all,
                        style: Styles.textStyle16.copyWith(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.height * 0.14,
                          decoration:BoxDecoration(
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
                      width: 10,
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
                      width: 10,
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
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.height * 0.14,
                          decoration:  BoxDecoration(
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),
                    NewProductsItem(),
                    SizedBox(
                      width: 15,
                    ),

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
