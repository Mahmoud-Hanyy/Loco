import 'package:loco/domain/entities/CategoryEntity.dart';

abstract class HomeTabStates {}

class HomeTabInitialState extends HomeTabStates {}

class HomeTabLoadingState extends HomeTabStates {
  String? loadingMessage;

  HomeTabLoadingState({required this.loadingMessage});
}

class HomeTabErrorState extends HomeTabStates {
  String? errorMessage;

  HomeTabErrorState({required this.errorMessage});
}

class HomeTabSuccessState extends HomeTabStates {
  //response-list of category
  CategoryResponseEntity responseEntity;

  HomeTabSuccessState({required this.responseEntity});
}
