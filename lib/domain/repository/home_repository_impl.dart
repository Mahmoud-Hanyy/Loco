import 'package:dartz/dartz.dart';
import 'package:loco/data/Api/failures.dart';
import 'package:loco/domain/data%20source/home_remote_data_source.dart';
import 'package:loco/domain/entities/CategoryEntity.dart';
import 'package:loco/domain/entities/ProductResponseEntity.dart';
import 'package:loco/domain/repository/home_repository_contract.dart';

class HomeRepositoryImpl implements HomeRepositoryContract {
  HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failures, CategoryResponseEntity>> getAllCategories() {
    return remoteDataSource.getAllCategories();
  }

  @override
  Future<Either<Failures, ProductResponseEntity>> getAllProducts() {
    return remoteDataSource.getAllProducts();
  }
}
