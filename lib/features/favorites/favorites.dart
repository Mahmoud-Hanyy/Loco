import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/core/utils/styles.dart';
import 'package:loco/features/model/user_fav.dart';
import 'package:provider/provider.dart';

import '../../provider/auth_provider.dart';
import '../../provider/fav_provider.dart';

//ignore: must_be_immutable
class Favorites extends StatefulWidget {
  static const String routename = 'fav';

  Favorites({super.key, this.userfav});

  UserFav? userfav;

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  bool isTap = true;
  UserFav? userfav;

  @override
  Widget build(BuildContext context) {
    var favListProvider = Provider.of<FavListProvider>(context);
    var authProvider = Provider.of<AuthProviders>(context);
    if (favListProvider.favList.isEmpty) {
      favListProvider
          .getAllProductsFromFireStore(authProvider.currentUser!.id!);
      return EmptyScreen(
        buttonText: "Loading",
        subtitle: 'sdfsdfd',
        title: 'sdf',
      );
    } else {
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(AppLocalizations.of(context)!.favorites,
              style: Styles.textOfLabel.copyWith(
                color: Theme.of(context).colorScheme.primary,
              )),
          centerTitle: true,
          toolbarHeight: 70,
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: favListProvider.favList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          elevation: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Row(
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  width: 140,
                                  height: 145,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "${favListProvider.favList[index].favProdImage}",
                                    height: MediaQuery.of(context).size.height *
                                        0.169,
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    fit: BoxFit.cover,
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      width: 96.0,
                                      height: 96.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          "${favListProvider.favList[index].favProdName}",
                                          style: Styles.textStyle20.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "${favListProvider.favList[index].favProdPrice} EGP",
                                              style:
                                                  Styles.textStyle20.copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}

class EmptyScreen extends StatelessWidget {
  String? title;
  String? subtitle;
  String? buttonText;

  EmptyScreen({this.title, this.subtitle, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(AppLocalizations.of(context)!.favorites,
            style: Styles.textOfLabel.copyWith(
              color: Theme.of(context).colorScheme.primary,
            )),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(buttonText!),
            ),
          ),
        ],
      ),
    );
  }
}
