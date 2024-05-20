import 'package:dartz/dartz.dart';
import 'package:loco/data/Api/failures.dart';
import 'package:loco/domain/entities/CategoryEntity.dart';
import 'package:loco/domain/entities/ProductResponseEntity.dart';

abstract class HomeRepositoryContract {
  Future<Either<Failures, CategoryResponseEntity>> getAllCategories();

  Future<Either<Failures, ProductResponseEntity>> getAllProducts();
}
