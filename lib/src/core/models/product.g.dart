// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  id: json['id'] as String?,
  productCode: json['productCode'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  arabicName: json['arabicName'] as String?,
  arabicDescription: json['arabicDescription'] as String?,
  coverPictureUrl: json['coverPictureUrl'] as String?,
  color: json['color'] as String?,
  sellerId: json['sellerId'] as String?,
  productPictures: (json['productPictures'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  price: (json['price'] as num?)?.toDouble(),
  stock: (json['stock'] as num?)?.toInt(),
  weight: (json['weight'] as num?)?.toDouble(),
  rating: (json['rating'] as num?)?.toDouble(),
  reviewCount: (json['reviewCount'] as num?)?.toInt(),
  discountPercentage: (json['discountPercentage'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'id': instance.id,
  'productCode': instance.productCode,
  'name': instance.name,
  'description': instance.description,
  'arabicName': instance.arabicName,
  'arabicDescription': instance.arabicDescription,
  'coverPictureUrl': instance.coverPictureUrl,
  'color': instance.color,
  'sellerId': instance.sellerId,
  'productPictures': instance.productPictures,
  'categories': instance.categories,
  'price': instance.price,
  'weight': instance.weight,
  'rating': instance.rating,
  'stock': instance.stock,
  'reviewCount': instance.reviewCount,
  'discountPercentage': instance.discountPercentage,
};
