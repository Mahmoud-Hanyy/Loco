import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/domain/di.dart';
import 'package:loco/features/categories/cubit/product_list_states.dart';
import 'package:loco/features/categories/cubit/product_list_view_model.dart';
import 'package:loco/features/product_details/product_details.dart';
import '../../../core/utils/styles.dart';
import '../../../core/widgets/product_item.dart';

//ignore: must_be_immutable
class Categories extends StatelessWidget {
  ProductListViewModel viewModel = ProductListViewModel(
      getAllProductsUseCase: injectGetAllProductsUseCase());

  Categories({super.key});

  static const String routeName = "Categories";
  String query = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
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
         scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          SizedBox(
            height: 50,
            width: 360,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Theme.of(context).colorScheme.primary,),
                  hintText: AppLocalizations.of(context)!.search,
                  hintStyle: Styles.textStyle16.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.surface,)),
                  fillColor: Theme.of(context).colorScheme.surface,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary,))),
                  onChanged: (val) {
                    query = val;
                    viewModel.searchProducts(query);
                  },
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: BlocBuilder<ProductListViewModel, ProductListTabStates>(
                bloc: viewModel..getProducts(),
                builder: (context, state) {
                  if (state is ProductListTabLoadingState) {
                    return const Center(child: CircularProgressIndicator());
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
  }
}