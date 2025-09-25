// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_product_reviews_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchProductReviewsRequestBody _$FetchProductReviewsRequestBodyFromJson(
  Map<String, dynamic> json,
) => FetchProductReviewsRequestBody(
  productId: json['productId'] as String,
  page: (json['page'] as num?)?.toInt() ?? 1,
  pageSize: (json['pageSize'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$FetchProductReviewsRequestBodyToJson(
  FetchProductReviewsRequestBody instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'page': instance.page,
  'pageSize': instance.pageSize,
};
