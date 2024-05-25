import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loco/core/widgets/product_item.dart';

import '../../domain/di.dart';
import '../../features/categories/cubit/product_list_states.dart';
import '../../features/categories/cubit/product_list_view_model.dart';
import '../../features/product_details/product_details.dart';

//ignore: must_be_immutable
class ProductsContainer extends StatelessWidget {
// MovieResponse movie;
  //String productName;
  ProductListViewModel viewModel = ProductListViewModel(
      getAllProductsUseCase: injectGetAllProductsUseCase());

  ProductsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ProductListViewModel, ProductListTabStates>(
          bloc: viewModel..getProducts(),
          builder: (context, state) {
            if (state is ProductListTabLoadingState) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is ProductListSearchState) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    childAspectRatio: 1 / 1.30),
                itemCount: state.productList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(ProductDetails.routename,
                          arguments: viewModel.productList[index]);
                    },
                    child: ProductItem(productEntity: state.productList[index]),
                  );
                },
              );
            }
            return Container();
          }),
    );

    // FutureBuilder<ProductResponseDto?>(
    //   future: ApiManager.searchProducts(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Center(
    //         child: CircularProgressIndicator(
    //           color: Theme.of(context).primaryColor,
    //         ),
    //       );
    //     } else if (snapshot.hasError) {
    //       return Column(
    //         children: [
    //           const Text('Something went wrong'),
    //           ElevatedButton(onPressed: () {}, child: const Text('Try Again'))
    //         ],
    //       );
    //     }
    //     if (snapshot.data?.data == false) {
    //       return Column(
    //         children: [
    //           Text(snapshot.data?.message ?? ""),
    //           ElevatedButton(onPressed: () {}, child: const Text('Try Again'))
    //         ],
    //       );
    //     }
    //     // List<ProductEntity> productList = snapshot.data?.clothes ?? [];
    //     var productList = ProductResponseDto().data ?? [];
    //     return ListView.builder(
    //       itemBuilder: (context, index) {
    //         return ProductItem(
    //           productEntity: viewModel.productList[index],
    //         );
    //       },
    //       itemCount: productList.length,
    //     );
    //   });
  }
}
