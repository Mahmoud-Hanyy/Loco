import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loco/features/categories/cubit/product_list_states.dart';

import '../../../domain/entities/ProductResponseEntity.dart';
import '../../../domain/usecases/get_all_products_use_case.dart';

class ProductListViewModel extends Cubit<ProductListTabStates> {
  GetAllProductsUseCase getAllProductsUseCase;

  ProductListViewModel({required this.getAllProductsUseCase})
      : super(ProductListTabInitialState());
  List<ProductEntity> productList = [];
  static ProductListViewModel get(context) => BlocProvider.of(context);

  getProducts() async {
    emit(ProductListTabLoadingState(loadingMessage: 'Loading...'));
    var either = await getAllProductsUseCase.invoke();
    either.fold((l) {
      emit(ProductListTabErrorState(errors: l));
    }, (response) {
      productList = response.data ?? [];
      emit(ProductListTabSuccessState(responseEntity: response));
    });
  }

  Search(String query) {
    List<ProductEntity> searchproducts = [];
    for (int i = 0; i < productList!.length; i++) {
      if (productList![i].title.toString().toLowerCase().startsWith(query)) {
        searchproducts?.add(productList![i]);
      }
    }
    emit(ProductListSearchState(productList: searchproducts));
    print(query + searchproducts!.length.toString() ?? "");
  }
}
