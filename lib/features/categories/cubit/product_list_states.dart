import 'package:loco/data/Api/failures.dart';

import '../../../domain/entities/ProductResponseEntity.dart';

abstract class ProductListTabStates {}

class ProductListTabSuccessState extends ProductListTabStates {
  ProductResponseEntity responseEntity;

  ProductListTabSuccessState({required this.responseEntity});
}

class ProductListSearchState extends ProductListTabStates {
  List<ProductEntity> productList = [];

  ProductListSearchState({required this.productList});
}

class ProductListTabInitialState extends ProductListTabStates {}

class ProductListTabLoadingState extends ProductListTabStates {
  String? loadingMessage;

  ProductListTabLoadingState({required this.loadingMessage});
}

class ProductListTabErrorState extends ProductListTabStates {
  Failures errors;

  ProductListTabErrorState({required this.errors});
}
