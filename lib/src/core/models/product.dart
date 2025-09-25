import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final String id,
      productCode,
      name,
      description,
      arabicName,
      arabicDescription,
      coverPictureUrl,
      color,
      sellerId;
  final List<String> productPictures, categories;
  final int price, stock, weight, rating, reviewCount, discountPercentage;

  Product({
    required this.id,
    required this.productCode,
    required this.name,
    required this.description,
    required this.arabicName,
    required this.arabicDescription,
    required this.coverPictureUrl,
    required this.color,
    required this.sellerId,
    required this.productPictures,
    required this.categories,
    required this.price,
    required this.stock,
    required this.weight,
    required this.rating,
    required this.reviewCount,
    required this.discountPercentage,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
