import 'package:dartz/dartz.dart';

import '../../data/Api/failures.dart';
import '../entities/CategoryOrBrandResponseEntity.dart';
import '../repository/home_repository_contract.dart';

class GetAllBrandsUseCase {
  HomeRepositoryContract repositoryContract;

  GetAllBrandsUseCase({required this.repositoryContract});

  Future<Either<Failures, CategoryOrBrandResponseEntity>> invoke() {
    return repositoryContract.getAllBrands();
  }
}
