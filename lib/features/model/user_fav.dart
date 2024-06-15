class UserFav {
  static const String collectionName = 'fav';
  String? id;
  String? favProdName;
  int? favProdPrice;
  String? favProdImage;
  String? favProdDescription;

  UserFav({
    this.id,
    required this.favProdName,
    required this.favProdPrice,
    required this.favProdImage,
    required this.favProdDescription,
  });

  UserFav.fromFireStore(Map<String, dynamic>? data)
      : this(
          id: data?['id'],
          favProdName: data?['favProdName'],
          favProdPrice: data?['favProdPrice'],
          favProdImage: data?['favProdImage'],
          favProdDescription: data?['favProdDescription'],
        );

  Map<String, dynamic> toFireStore() {
    return {
      'id': id,
      'favProdName': favProdName,
      'favProdPrice': favProdPrice,
      'favProdImage': favProdImage,
      'favProdDescription': favProdDescription,
    };
  }
}
