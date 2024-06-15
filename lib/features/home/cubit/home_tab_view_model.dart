import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loco/features/home/cubit/home_tab_states.dart';
import '../../../domain/entities/CategoryEntity.dart';
import '../../../domain/use_cases/get_all_categories_use_case.dart';

class HomeTabViewModel extends Cubit<HomeTabStates> {
  GetAllCategoriesUseCases getAllCategoryUseCase;

  HomeTabViewModel({required this.getAllCategoryUseCase})
      : super(HomeTabInitialState());

  List<CategoryEntity> categoriesList = [];

  void getCategories() async {
    emit(HomeTabLoadingState(loadingMessage: 'loading..'));
    var either = await getAllCategoryUseCase.invoke();
    either.fold((l) {
      emit(HomeTabErrorState(errorMessage: l.errorMessage));
    }, (response) {
      categoriesList = response.clothes ?? [];
      emit(HomeTabSuccessState(responseEntity: response));
    });
  }
}
