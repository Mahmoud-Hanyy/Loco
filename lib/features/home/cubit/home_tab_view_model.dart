import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loco/features/home/cubit/home_tab_states.dart';

import '../../../domain/entities/CategoryOrBrandResponseEntity.dart';
import '../../../domain/usecases/get_all_brands_use_case.dart';
import '../../../domain/usecases/get_all_categories_use_case.dart';

class HomeTabViewModel extends Cubit<HomeTabStates> {
  GetAllCategoriesUseCases getAllCategoryUseCase;
  GetAllBrandsUseCase getAllBrandsUseCase;

  HomeTabViewModel(
      {required this.getAllCategoryUseCase, required this.getAllBrandsUseCase})
      : super(HomeTabInitialState());

  List<CategoryOrBrandEntity>? categoriesList = [];
  List<CategoryOrBrandEntity>? brandsList;

  void getCategories() async {
    emit(HomeTabCategoryLoadingState(loadingMessage: 'loading..'));
    var either = await getAllCategoryUseCase.invoke();
    either.fold((l) {
      emit(HomeTabCategoryErrorState(errorMessage: l.errorMessage));
    }, (response) {
      categoriesList = response.data ?? [];
      emit(HomeTabCategorySuccessState(categoryEntity: response));
    });
  }

  void getBrands() async {
    emit(HomeTabBrandLoadingStates());
    var either = await getAllBrandsUseCase.invoke();
    either.fold((l) {
      emit(HomeTabBrandErrorStates(errors: l));
    }, (response) {
      brandsList = response.data;
      if (categoriesList != null) {
        emit(HomeTabBrandSuccessStates(categoryOrBrandEntity: response));
      }
    });
  }
}
