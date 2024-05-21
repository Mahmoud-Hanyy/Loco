class MyUser{
  static const String collectionName='users';
  String? id;
  String? firstName;
  String? lastName;
  String? email;

  MyUser({required this.id,
    required this.firstName,
    required this.lastName,
    required this.email
  });
  MyUser.fromFireStore(Map<String,dynamic>?data):this(
    id: data?['id'],
    firstName: data?['firstName'],
    lastName: data?['lastName'],
    email: data?['email'],

  );
  Map<String,dynamic> toFireStore(){
    return{
      'id': id,
      'firstName':firstName,
      'lastName':lastName,
      'email':email,
    };
  }


}