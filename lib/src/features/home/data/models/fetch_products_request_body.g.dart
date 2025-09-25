// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_products_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchProductsRequestBody _$FetchProductsRequestBodyFromJson(
  Map<String, dynamic> json,
) => FetchProductsRequestBody(
  page: (json['page'] as num?)?.toInt() ?? 1,
  pageSize: (json['pageSize'] as num?)?.toInt() ?? 10,
  category: json['category'] as String?,
  sortBy: json['sortBy'] as String?,
  sortOrder: json['sortOrder'] as String?,
  searchTerm: json['searchTerm'] as String?,
  isInStock: json['isInStock'] as bool?,
  maxPrice: (json['maxPrice'] as num?)?.toInt(),
  minPrice: (json['minPrice'] as num?)?.toInt(),
);

Map<String, dynamic> _$FetchProductsRequestBodyToJson(
  FetchProductsRequestBody instance,
) => <String, dynamic>{
  'category': instance.category,
  'sortBy': instance.sortBy,
  'sortOrder': instance.sortOrder,
  'searchTerm': instance.searchTerm,
  'isInStock': instance.isInStock,
  'maxPrice': instance.maxPrice,
  'minPrice': instance.minPrice,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
