import 'package:loco/data/Api/failures.dart';

import '../../../domain/entities/ProductResponseEntity.dart';

abstract class ProductListTabStates {}

class ProductListTabSuccessState extends ProductListTabStates {
  ProductResponseEntity responseEntity;

  ProductListTabSuccessState({required this.responseEntity});
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
