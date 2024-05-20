import 'package:dartz/dartz.dart';
import 'package:loco/data/Api/failures.dart';
import 'package:loco/domain/data%20source/home_remote_data_source.dart';
import 'package:loco/domain/entities/CategoryEntity.dart';
import 'package:loco/domain/entities/ProductResponseEntity.dart';

import '../../data/Api/api_manager.dart';

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  ApiManager apimanager;

  HomeRemoteDataSourceImpl({required this.apimanager});

  @override
  Future<Either<Failures, CategoryResponseEntity>> getAllCategories() async {
    var either = await apimanager.getCategories();
    return either.fold((error) {
      return Left(Failures(errorMessage: error.errorMessage));
    }, (response) {
      return Right(response);
    });
  }

  @override
  Future<Either<Failures, ProductResponseEntity>> getAllProducts() async {
    var either = await apimanager.getAllProducts();
    return either.fold((l) {
      return Left(Failures(errorMessage: l.errorMessage));
    }, (response) {
      return Right(response);
    });
  }
}
