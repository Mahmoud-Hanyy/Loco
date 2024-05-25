import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/domain/di.dart';
import 'package:loco/features/categories/cubit/product_list_states.dart';
import 'package:loco/features/categories/cubit/product_list_view_model.dart';
import 'package:loco/features/product_details/product_details.dart';

import '../../../core/utils/styles.dart';
import '../../../core/widgets/product_item.dart';

class Categories extends StatelessWidget {
  ProductListViewModel viewModel = ProductListViewModel(
      getAllProductsUseCase: injectGetAllProductsUseCase());

  Categories({super.key});

  static const String routeName = "Categories";
  String query = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.categories,
            style: Styles.textOfLabel.copyWith(
              color: Theme.of(context).colorScheme.primary,
            )),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.white)),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.white))),
            onChanged: (val) {
              query = val;
              viewModel.Search(query);
            },
          ),
          Expanded(
            child: BlocBuilder<ProductListViewModel, ProductListTabStates>(
                bloc: viewModel..getProducts(),
                builder: (context, state) {
                  if (state is ProductListTabLoadingState) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (state is ProductListSearchState) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 25,
                              childAspectRatio: 1 / 1.30),
                      itemCount: state.productList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                                ProductDetails.routename,
                                arguments: state.productList[index]);
                          },
                          child: ProductItem(
                              productEntity: state.productList[index]),
                        );
                      },
                    );
                  }
                  return Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 25,
                                childAspectRatio: 1 / 1.30),
                        itemCount: viewModel.productList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  ProductDetails.routename,
                                  arguments: viewModel.productList[index]);
                            },
                            child: ProductItem(
                                productEntity: viewModel.productList[index]),
                          );
                        }),
                  );
                }),
          )
        ],
      ),
    );
    // BlocBuilder<ProductListViewModel, ProductListTabStates>(
    //   bloc: viewModel..getProducts(),
    //   builder: (context, state) {
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: Text(AppLocalizations.of(context)!.categories,
    //             style: Styles.textOfLabel.copyWith(
    //               color: Theme.of(context).colorScheme.primary,
    //             )),
    //         centerTitle: true,
    //         toolbarHeight: 70,
    //         backgroundColor: Theme.of(context).colorScheme.surface,
    //         elevation: 0,
    //         automaticallyImplyLeading: false,
    //       ),
    //       body: Container(
    //         color: Theme.of(context).colorScheme.surface,
    //         child: Column(
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.only(
    //                   top: 20, bottom: 10, right: 0, left: 0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                 children: [
    //                   Container(
    //                       height: MediaQuery.of(context).size.height * 0.07,
    //                       width: MediaQuery.of(context).size.width * 0.8,
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(26),
    //                         color: Theme.of(context).colorScheme.surface,
    //                         border: (Border.all(
    //                             color: Theme.of(context).colorScheme.primary,
    //                             width: 2)),
    //                       ),
    //                       child:
    //                       // Row(
    //                       //   children: [
    //                       //     IconButton(
    //                       //         onPressed:()=>showSearch(
    //                       // context: context,
    //                       //     delegate:
    //                       //     ProductsSearchDelegate()),
    //                       //         icon: Icon(
    //                       //           Icons.search,
    //                       //           color:
    //                       //           Theme.of(context).colorScheme.primary,
    //                       //           size: 30,
    //                       //         )),
    //                       //     Text(
    //                       //       AppLocalizations.of(context)!
    //                       //           .search_for_your_product,
    //                       //       style: TextStyle(
    //                       //           color: Theme.of(context)
    //                       //               .colorScheme
    //                       //               .primary
    //                       //               .withOpacity(0.6),
    //                       //           fontSize: 15),
    //                       //     ),
    //                       //   ],
    //                       // )
    //                     TextField(
    //                       decoration: InputDecoration(
    //                         prefixIcon: Icon(Icons.search),hintText: 'Saerch...',
    //                         focusedBorder: OutlineInputBorder(
    //                           borderRadius: BorderRadius.circular(25),
    //                           borderSide: BorderSide(color: Colors.white)
    //                         )
    //                       ),
    //                       onChanged: (val){
    //                         query=val;
    //                         viewModel.Search(query);
    //                       },
    //                     )
    //                   ),
    //                   IconButton(
    //                       onPressed: () {},
    //                       icon: Icon(
    //                         Icons.filter_alt_outlined,
    //                         color: Theme.of(context).colorScheme.primary,
    //                         size: 35,
    //                       )),
    //                 ],
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 20,
    //             ),
    //             state is ProductListTabLoadingState
    //                 ? Center(
    //               child: CircularProgressIndicator(
    //                 color: Theme.of(context).colorScheme.primary,
    //               ),
    //             )
    //                 : Expanded(
    //                   child: GridView.builder(
    //                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //                       crossAxisCount: 2,
    //                       mainAxisSpacing: 25,
    //                       childAspectRatio: 1 / 1.30
    //                   ),
    //                     itemCount: viewModel.productList.length,
    //                     itemBuilder: (BuildContext context, int index) {
    //                     return InkWell(
    //                       onTap: () {
    //                         Navigator.of(context).pushNamed(
    //                             ProductDetails.routename,
    //                             arguments: viewModel.productList[index]);
    //                       },
    //                       child: ProductItem(
    //                           productEntity:
    //                           viewModel.productList[index]),
    //                     );
    //                   }),
    //             ),
    //             const SizedBox(
    //               height: 10,
    //             )
    //           ],
    //         ),
    //       ),
    //     );
    //   });
  }
}