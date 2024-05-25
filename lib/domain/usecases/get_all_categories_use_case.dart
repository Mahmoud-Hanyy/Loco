import 'package:dartz/dartz.dart';
import 'package:loco/data/Api/failures.dart';
import 'package:loco/domain/entities/CategoryOrBrandResponseEntity.dart';
import 'package:loco/domain/repository/home_repository_contract.dart';

class GetAllCategoriesUseCases {
  //function tgibli al categories
  HomeRepositoryContract repositoryContract;

  GetAllCategoriesUseCases({required this.repositoryContract});

//function to get categories
  Future<Either<Failures, CategoryOrBrandResponseEntity>> invoke() {
    return repositoryContract.getAllCategories();
  }
}
