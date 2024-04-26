import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:loco/data/Api/api_constatnts.dart';
import 'package:loco/data/Api/failures.dart';
import 'package:loco/data/model/response/CategoryResponseDto.dart';

import '../model/response/ProductResponseDto.dart';

class ApiManager {
  ApiManager._();

  static ApiManager? _instance;

  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }

  Future<Either<Failures, CategoryResponseDto>> getCategories() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network.
      Uri url =
          Uri.https(ApiConstants.baseUrl, ApiConstants.getAllCategoriesApi);
      var response = await http.get(url);
      var categoryResponse =
          CategoryResponseDto.fromJson(jsonDecode(response.body));
      //response momkn ykoun success or fail
      //range 200 lai 300 7alet success
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Right(categoryResponse);
      } else {
        return Left(ServerError(errorMessage: categoryResponse.message));
      }
    } else {
      //left base Error
      //no internet connection fa sa3tha haraga3 error
      return Left(
          NetworkError(errorMessage: 'Please Check Internet Connection'));
    }
  }

  Future<Either<Failures, ProductResponseDto>> getAllProducts() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network or wifi .
      Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.getAllProductsApi);
      var response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      var productResponse = ProductResponseDto.fromJson(json);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return Right(productResponse);
      } else {
        return Left(ServerError(errorMessage: productResponse.message));
      }
    } else {
      /// no internet connection
      return Left(NetworkError(errorMessage: 'Check Internet connection'));
    }
  }

  static Future<ProductResponseDto> searchProducts(String query) async {
    try {
      Uri url = Uri.https(
          ApiConstants.baseUrl, ApiConstants.getAllProductsApi, {'q': query});
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      print('Success');
      return ProductResponseDto.fromJson(json);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
