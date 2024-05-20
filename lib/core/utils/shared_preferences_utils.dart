import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceUtils {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  //save token data
  static Future<bool> saveData({required String key, dynamic value}) {
    if (value is int) {
      return sharedPreferences.setInt(key, value);
    } else if (value is double) {
      return sharedPreferences.setDouble(key, value);
    } else if (value is String) {
      return sharedPreferences.setString(key, value);
    } else {
      return sharedPreferences.setBool(key, value);
    }
  }

  static String? getData(dynamic key) {
    return sharedPreferences.getString(key);
  }
}
