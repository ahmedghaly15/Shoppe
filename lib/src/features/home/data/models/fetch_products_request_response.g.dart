// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_products_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchProductsRequestResponse _$FetchProductsRequestResponseFromJson(
  Map<String, dynamic> json,
) => FetchProductsRequestResponse(
  products: (json['item'] as List<dynamic>)
      .map((e) => Product.fromJson(e as Map<String, dynamic>))
      .toList(),
  page: (json['page'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
  hasNextPage: json['hasNextPage'] as bool,
  hasPreviousPage: json['hasPreviousPage'] as bool,
);

Map<String, dynamic> _$FetchProductsRequestResponseToJson(
  FetchProductsRequestResponse instance,
) => <String, dynamic>{
  'item': instance.products.map((e) => e.toJson()).toList(),
  'page': instance.page,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'hasNextPage': instance.hasNextPage,
  'hasPreviousPage': instance.hasPreviousPage,
};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  id: json['id'] as String,
  productCode: json['productCode'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  arabicName: json['arabicName'] as String,
  arabicDescription: json['arabicDescription'] as String,
  coverPictureUrl: json['coverPictureUrl'] as String,
  color: json['color'] as String,
  sellerId: json['sellerId'] as String,
  productPictures: (json['productPictures'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  categories: (json['categories'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  price: (json['price'] as num).toInt(),
  stock: (json['stock'] as num).toInt(),
  weight: (json['weight'] as num).toInt(),
  rating: (json['rating'] as num).toInt(),
  reviewCount: (json['reviewCount'] as num).toInt(),
  discountPercentage: (json['discountPercentage'] as num).toInt(),
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
  'stock': instance.stock,
  'weight': instance.weight,
  'rating': instance.rating,
  'reviewCount': instance.reviewCount,
  'discountPercentage': instance.discountPercentage,
};
