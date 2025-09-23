// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_offers_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchOffersRequestBody _$FetchOffersRequestBodyFromJson(
  Map<String, dynamic> json,
) => FetchOffersRequestBody(
  page: (json['page'] as num?)?.toInt() ?? 1,
  pageSize: (json['pageSize'] as num?)?.toInt() ?? 6,
);

Map<String, dynamic> _$FetchOffersRequestBodyToJson(
  FetchOffersRequestBody instance,
) => <String, dynamic>{'page': instance.page, 'pageSize': instance.pageSize};
