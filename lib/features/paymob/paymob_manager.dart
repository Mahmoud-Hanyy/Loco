import 'package:dio/dio.dart';
import '../../core/utils/assets.dart';

class PaymobManager{
  Dio dio = Dio();
  Future<String> payWithPaymob(int amount)async{
    try{
      String token = await getToken();
      String orderID = (await getOrderID(token: token, amount: amount.toString())) as String;
      String paymentKey = await getPaymentKey(token: token, orderID: orderID, amount: amount.toString());
      return paymentKey;
    }catch(e){
      rethrow;
    }
  }
  Future<String>getToken()async{
   try{
     Response response = await dio.post("https://accept.paymob.com/api/auth/tokens",
         data: {
           "api_key": Assets.api_key,
         });
     return response.data['token'];
   }catch(e){
     rethrow;
   }
  }

  Future<int> getOrderID({required String token,required String amount})async{
    try{
      Response response = await dio.post("https://accept.paymob.com/api/ecommerce/orders",
          data: {
            "auth_token": token,
            "delivery_needed": "false",
            "amount_cents": amount,
            "currency": "EGP",
          });
      return response.data['id'];
    }catch(e){
      rethrow;
    }
  }

  Future<String> getPaymentKey({required String token,required String orderID,required String amount})async{
  try{
      Response response = await dio.post("https://accept.paymob.com/api/acceptance/payment_keys",
          data: {
            "auth_token": token,
            "amount_cents": amount,
            "order_id": orderID,
            "integration_id": 4539675,
            "currency": "EGP",
            "lock_order_when_paid": "false",
            "billing_data": {
              "apartment": "803",
              "floor": "42",
              "first_name": "John",
              "street": "Ethan Land",
              "building": "8028",
              "phone_number": "+86(8)9135210487",
              "shipping_method": "PKG",
              "postal_code": "01898",
              "city": "Jaskolskiburgh",
              "country": "CR",
              "last_name": "Doe",
              "state": "Utah"
            },
          });
      return response.data['token'];
    }catch(e){
      rethrow;
    }
  }

}