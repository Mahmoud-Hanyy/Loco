import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loco/data/cubit/products_states.dart';
import 'package:loco/data/models/products_model.dart';
import '../repos/products_repo.dart';

class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit() : super(ProductLoadingState());

  ProductsRepository productsRepository = ProductsRepository();

  void fetchPosts() async {
    try {
      List<ProductsModel> products = await productsRepository.fetchProducts();
      emit(ProductLoadedState(products));
    }
    on DioException catch(ex) {
      if(ex.type == DioExceptionType.unknown) {
        emit(ProductErrorState("Can't fetch posts, please check your internet connection!") );
      }
      else {
        emit( ProductErrorState(ex.type.toString()) );
      }
    }
  }
}