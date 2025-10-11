import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
sealed class Product with _$Product {
  const factory Product({
    String? id,
    String? productCode,
    String? name,
    String? description,
    String? arabicName,
    String? arabicDescription,
    String? coverPictureUrl,
    String? color,
    String? sellerId,
    List<String>? productPictures,
    List<String>? categories,
    double? price,
    double? weight,
    double? rating,
    int? stock,
    int? reviewCount,
    int? discountPercentage,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  factory Product.empty() => const Product();
}

extension GetFinalPrice on Product {
  double get finalPrice {
    final basePrice = price ?? 0.0;
    final discount = discountPercentage ?? 0;
    return basePrice * (1 - (discount / 100));
  }
}
