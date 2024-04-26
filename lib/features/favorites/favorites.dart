import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';

import '../../core/utils/assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//ignore: must_be_immutable
class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);
  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  bool isTap = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.favorites,
          style: Styles.textOfLabel.copyWith(
            color: Theme.of(context).colorScheme.primary,
          )
        ),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      body:Container(
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                          elevation: 6,
                          shadowColor: Theme.of(context).colorScheme.primary,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width*0.3,
                            height: MediaQuery.of(context).size.height *0.18,
                            child: Row(
                              children: [
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    width:140,
                                    height: 145,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Image.asset(Assets.hoodie1,
                                      fit: BoxFit.cover,)),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Text('Black Micheal Angelo Hoodie',
                                        style: Styles.textStyle20.copyWith(
                                          color: Theme.of(context).colorScheme.primary,
                                        ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('EGP 430',
                                              style: Styles.textStyle20.copyWith(
                                              color: Theme.of(context).colorScheme.primary,
                                            ),),
                                            IconButton(onPressed: (){
                                              setState(() {
                                                isTap =! isTap;
                                              });
                                            }, icon:Icon(Icons.favorite,color: isTap?Theme.of(context).colorScheme.primary:Theme.of(context).colorScheme.background,)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    );

                  },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}