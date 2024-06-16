import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:loco/data/model/response/ProductResponseDto.dart';

class ApiServices {
  Future<ProductResponseDto?> myFilterList() async {
    Uri url = Uri.parse("https://products-api-5.onrender.com/api/products");
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        return ProductResponseDto.fromJson(
          jsonDecode(response.body),
        );
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
