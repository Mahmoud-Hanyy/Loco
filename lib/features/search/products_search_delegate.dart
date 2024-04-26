import 'package:flutter/material.dart';

import '../../data/Api/products_container.dart';
import '../../domain/di.dart';
import '../categories/cubit/product_list_view_model.dart';

class ProductsSearchDelegate extends SearchDelegate {
  ProductListViewModel viewModel = ProductListViewModel(
      getAllProductsUseCase: injectGetAllProductsUseCase());

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () => showResults(context), icon: Icon(Icons.search))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.close));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Center(child: Text('Suggestions'));
    }
    return ProductsContainer(productName: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Suggestions'),
    );
  }
}
