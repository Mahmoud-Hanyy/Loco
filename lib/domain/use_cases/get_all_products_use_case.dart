import 'package:dartz/dartz.dart';

import '../../data/Api/failures.dart';
import '../entities/ProductResponseEntity.dart';
import '../repository/home_repository_contract.dart';

class GetAllProductsUseCase {
  HomeRepositoryContract repositoryContract;

  GetAllProductsUseCase({required this.repositoryContract});

  Future<Either<Failures, ProductResponseEntity>> invoke() {
    return repositoryContract.getAllProducts();
  }
}
