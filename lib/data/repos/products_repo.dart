import 'package:dio/dio.dart';
import '../models/products_model.dart';
import '../service/api_service.dart';

class ProductsRepository {

  API api = API();

  Future<List<ProductsModel>> fetchProducts() async {
    try {
      Response response = await api.sendRequest.get("/posts");
      List<dynamic> postMaps = response.data;
      return postMaps.map((postMap) => ProductsModel.fromJson(postMap)).toList();
    }
    catch(ex) {
      throw ex;
    }
  }

}