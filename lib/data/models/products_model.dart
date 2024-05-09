
class ProductsModel {
  final int? id;
  final String? name;
  final String? category;
  final int? price;
  final String? imageUrl;

  const ProductsModel({
    this.id,
    this.name,
    this.category,
    this.price,
    this.imageUrl,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        id: json['id'] as int?,
        name: json['Name'] as String?,
        category: json['Category'] as String?,
        price: json['Price'] as int?,
        imageUrl: json['imageUrl'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'Name': name,
        'Category': category,
        'Price': price,
        'imageUrl': imageUrl,
      };

  List<Object?> get props => [id, name, category, price, imageUrl];
}
