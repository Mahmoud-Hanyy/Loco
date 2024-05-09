import '../models/products_model.dart';

abstract class ProductsStates{}

class ProductLoadingState extends ProductsStates{}

class ProductLoadedState extends ProductsStates{
  final List<ProductsModel>products ;
  ProductLoadedState(this.products);
}

class ProductErrorState extends ProductsStates{
  final String error ;
  ProductErrorState(this.error);

}

