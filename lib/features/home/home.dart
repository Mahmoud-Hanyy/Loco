import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/core/utils/assets.dart';
import 'package:loco/core/widgets/package_item.dart';
import '../../core/utils/styles.dart';
import '../cart/add_to_cart.dart';
import '../categories/widgets/categories.dart';
import '../color_picker/color_picker.dart';
import '../loco_assistant/loco_assistant.dart';

//ignore:must_be_immutable
class HomePage extends StatelessWidget {
  static const String routename = 'Home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(AppLocalizations.of(context)!.loco,
                style: Styles.textOfLabel.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Logo',
                )),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(LocoAssistant.routeName);
                  },
                  icon: Icon(
                    Icons.smart_toy_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 25,
                  )
              ),
              const SizedBox(width: 5),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ColorPickerScreen.routeName);
                  },
                  icon: Icon(
                    Icons.palette_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 25,
                  )
              ),
              const SizedBox(width: 5),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AddToCart.routename);
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 25,
                  )),
            ],
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Theme.of(context).colorScheme.surface,
              statusBarIconBrightness: Brightness.dark,
            ),
            toolbarHeight: 70,
            backgroundColor: Theme.of(context).colorScheme.surface,
            elevation: 0,
          ),
        body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLocalizations.of(context)!.categories,
                                style: Styles.textStyle30.copyWith(
                                    color: Theme.of(context).colorScheme.primary)),
                            TextButton(
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
                          ],
                        ),
                        const SizedBox(
                          height: 20,
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
                                AppLocalizations.of(context)!.our_packages,
                                style: Styles.textStyle16.copyWith(
                                    fontSize: 30,
                                    color: Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              PackageItem(text: "Bronze package", price: " Free "),
                              const SizedBox(
                                width: 20,
                              ),
                              PackageItem(text: "Silver package ", price: " 250 EG "),
                              const SizedBox(
                                width: 20,
                              ),
                              PackageItem(text: "Gold package ", price: " 750 EG "),
                              const SizedBox(
                                width: 20,
                              ),
                              PackageItem(text: "Platinum package ", price: " 1500 EG"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
    );
  }
}
