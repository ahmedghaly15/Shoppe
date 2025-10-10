import 'package:flutter/material.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@immutable
@JsonSerializable()
class Product {
  final String? id,
      productCode,
      name,
      description,
      arabicName,
      arabicDescription,
      coverPictureUrl,
      color,
      sellerId;
  final List<String>? productPictures, categories;
  final double? price, weight, rating;
  final int? stock, reviewCount, discountPercentage;

  const Product({
    this.id,
    this.productCode,
    this.name,
    this.description,
    this.arabicName,
    this.arabicDescription,
    this.coverPictureUrl,
    this.color,
    this.sellerId,
    this.productPictures,
    this.categories,
    this.price,
    this.stock,
    this.weight,
    this.rating,
    this.reviewCount,
    this.discountPercentage,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
  factory Product.empty() => const Product();
}

extension GetFinalPrice on Product {
  double get finalPrice {
    final basePrice = price ?? 0.0;
    final discount = discountPercentage ?? 0;
    return basePrice * (1 - (discount / 100));
  }
}
