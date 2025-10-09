// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_products_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchProductsRequestResponse _$FetchProductsRequestResponseFromJson(
  Map<String, dynamic> json,
) => FetchProductsRequestResponse(
  products: (json['items'] as List<dynamic>)
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
  'items': instance.products.map((e) => e.toJson()).toList(),
  'page': instance.page,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'hasNextPage': instance.hasNextPage,
  'hasPreviousPage': instance.hasPreviousPage,
};
