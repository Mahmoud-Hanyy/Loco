import 'package:flutter/cupertino.dart';

import '../features/model/my_user.dart';

class AuthProvidersr extends ChangeNotifier {
  MyUser? currentUser;

  void updateUser(MyUser newUser) {
    currentUser = newUser;
    notifyListeners();
  }
}
