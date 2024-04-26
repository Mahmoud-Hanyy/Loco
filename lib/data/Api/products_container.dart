import 'package:flutter/material.dart';
import 'package:loco/core/widgets/product_item.dart';

import '../../domain/di.dart';
import '../../features/categories/cubit/product_list_view_model.dart';
import '../model/response/ProductResponseDto.dart';
import 'api_manager.dart';

class ProductsContainer extends StatelessWidget {
// MovieResponse movie;
  String productName;
  ProductListViewModel viewModel = ProductListViewModel(
      getAllProductsUseCase: injectGetAllProductsUseCase());

  ProductsContainer({required this.productName});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ProductResponseDto?>(
        future: ApiManager.searchProducts(productName),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(onPressed: () {}, child: Text('Try Again'))
              ],
            );
          }
          if (snapshot.data?.clothes == false) {
            return Column(
              children: [
                Text(snapshot.data?.message ?? ""),
                ElevatedButton(onPressed: () {}, child: Text('Try Again'))
              ],
            );
          }
          // List<ProductEntity> productList = snapshot.data?.clothes ?? [];
          var productList = ProductResponseDto().clothes ?? [];
          return ListView.builder(
            itemBuilder: (context, index) {
              return ProductItem(
                productEntity: viewModel.productList[index],
              );
            },
            itemCount: productList.length,
          );
        });
    // return FutureBuilder<MoviesResponse?>(
    //   // future: ApiManager.searchMovies(query),
    //   //   builder: builder);
  }
}
