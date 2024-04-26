import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loco/features/categories/cubit/product_list_states.dart';

import '../../../domain/entities/ProductResponseEntity.dart';
import '../../../domain/usecases/get_all_products_use_case.dart';

class ProductListViewModel extends Cubit<ProductListTabStates> {
  GetAllProductsUseCase getAllProductsUseCase;

  ProductListViewModel({required this.getAllProductsUseCase})
      : super(ProductListTabInitialState());
  List<ProductEntity> productList = [];

  void getProducts() async {
    emit(ProductListTabLoadingState(loadingMessage: 'Loading...'));
    var either = await getAllProductsUseCase.invoke();
    either.fold((l) {
      emit(ProductListTabErrorState(errors: l));
    }, (response) {
      productList = response.clothes ?? [];
      emit(ProductListTabSuccessState(responseEntity: response));
    });
  }
}
