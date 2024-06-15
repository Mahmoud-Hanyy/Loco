import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loco/features/model/user_fav.dart';

import '../../features/model/my_user.dart';

class FirebaseUtils{
  static CollectionReference<MyUser> getUsersCollection(){
    return FirebaseFirestore.instance.collection(MyUser.collectionName).withConverter<MyUser>(
        fromFirestore: (snapshot,options)=>MyUser.fromFireStore(snapshot.data()),
            toFirestore: (user, options) => user.toFireStore());
  }

  static Future<void> addUserToFireStore(MyUser myUser) {
    return getUsersCollection().doc(myUser.id).set(myUser);
  }

  static Future<MyUser?> readUserFromFireStore(String uId) async {
    var querySnapShot = await getUsersCollection().doc(uId).get();
    return querySnapShot.data();
  }

  /// fav data
  static CollectionReference<UserFav> getProductCollection(String uId) {
    return getUsersCollection()
        .doc(uId)
        .collection(UserFav.collectionName)
        .withConverter<UserFav>(
            fromFirestore: (snapshot, options) =>
                UserFav.fromFireStore(snapshot.data()!),
            toFirestore: (userfav, options) => userfav.toFireStore());
  }

  static Future<void> addProductToFireStore(UserFav userfav, String uId) {
    var productsCollection = getProductCollection(uId);
    DocumentReference<UserFav> docRef = productsCollection.doc();
    userfav.id = docRef.id;
    return docRef.set(userfav);
  }
}