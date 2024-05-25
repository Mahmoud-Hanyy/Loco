import 'package:loco/domain/entities/CategoryOrBrandResponseEntity.dart';

import '../../../data/Api/failures.dart';

abstract class HomeTabStates {}

class HomeTabInitialState extends HomeTabStates {}

class HomeTabCategoryLoadingState extends HomeTabStates {
  String? loadingMessage;

  HomeTabCategoryLoadingState({required this.loadingMessage});
}

class HomeTabCategoryErrorState extends HomeTabStates {
  String? errorMessage;

  HomeTabCategoryErrorState({required this.errorMessage});
}

class HomeTabCategorySuccessState extends HomeTabStates {
  //response-list of category
  CategoryOrBrandResponseEntity categoryEntity;

  HomeTabCategorySuccessState({required this.categoryEntity});
}

class HomeTabBrandLoadingStates extends HomeTabStates {
  String? loadingMessage;

  HomeTabBrandLoadingStates({this.loadingMessage});
}

class HomeTabBrandErrorStates extends HomeTabStates {
  Failures errors;

  HomeTabBrandErrorStates({required this.errors});
}

class HomeTabBrandSuccessStates extends HomeTabStates {
  CategoryOrBrandResponseEntity categoryOrBrandEntity;

  HomeTabBrandSuccessStates({required this.categoryOrBrandEntity});
}
