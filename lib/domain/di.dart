import 'package:loco/data/Api/api_manager.dart';
import 'package:loco/domain/data%20source/home_remote_data_source.dart';
import 'package:loco/domain/data%20source/home_remote_data_source_impl.dart';
import 'package:loco/domain/repository/home_repository_contract.dart';
import 'package:loco/domain/repository/home_repository_impl.dart';
import 'package:loco/domain/usecases/get_all_categories_use_case.dart';
import 'package:loco/domain/usecases/get_all_products_use_case.dart';

GetAllCategoriesUseCases injectGetAllCategoriesUseCases() {
  return GetAllCategoriesUseCases(
      repositoryContract: injectHomeRepositoryContract());
}

GetAllProductsUseCase injectGetAllProductsUseCase() {
  return GetAllProductsUseCase(
      repositoryContract: injectHomeRepositoryContract());
}

HomeRepositoryContract injectHomeRepositoryContract() {
  return HomeRepositoryImpl(remoteDataSource: injectHomeRemoteDataSource());
}

HomeRemoteDataSource injectHomeRemoteDataSource() {
  return HomeRemoteDataSourceImpl(apimanager: ApiManager.getInstance());
}
