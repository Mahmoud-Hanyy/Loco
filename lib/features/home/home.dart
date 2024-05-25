import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/core/utils/assets.dart';
import 'package:loco/domain/di.dart';
import 'package:loco/features/home/cubit/home_tab_states.dart';
import 'package:loco/features/home/cubit/home_tab_view_model.dart';

import '../../core/utils/styles.dart';
import '../cart/add_to_cart.dart';

//ignore:must_be_immutable
class HomePage extends StatelessWidget {
  HomeTabViewModel viewModel = HomeTabViewModel(
      getAllCategoryUseCase: injectGetAllCategoriesUseCases(),
      getAllBrandsUseCase: injectGetAllBrandsUseCase());
  late String productName;
  late int price;
  static const String routename = 'Home';

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeTabViewModel, HomeTabStates>(
      bloc: viewModel
        ..getCategories()
        ..getBrands(),
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.loco,
                style: Styles.textOfLabel.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                )),
            centerTitle: true,
            toolbarHeight: 70,
            backgroundColor: Theme.of(context).colorScheme.surface,
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.24,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.surface,
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
                  const SizedBox(
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
                          AppLocalizations.of(context)!.our_packages,
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
        );
      },
    );
  }
}
