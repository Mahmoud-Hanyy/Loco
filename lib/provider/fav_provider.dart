import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loco/features/model/user_fav.dart';

import '../core/utils/firebase_utils.dart';

class FavListProvider extends ChangeNotifier {
  // data
  List<UserFav> favList = [];

  void getAllProductsFromFireStore(String uId) async {
    QuerySnapshot<UserFav> querySnapshot =
        await FirebaseUtils.getProductCollection(uId).get();

    favList = querySnapshot.docs.map((doc) {
      return doc.data();
    }).toList();
    notifyListeners();
  }
}
