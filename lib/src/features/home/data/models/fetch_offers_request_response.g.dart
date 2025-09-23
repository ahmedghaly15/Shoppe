// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_offers_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchOffersRequestResponse _$FetchOffersRequestResponseFromJson(
  Map<String, dynamic> json,
) => FetchOffersRequestResponse(
  offers: json['offers'] == null
      ? null
      : OffersResponseBody.fromJson(json['offers'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FetchOffersRequestResponseToJson(
  FetchOffersRequestResponse instance,
) => <String, dynamic>{'offers': instance.offers?.toJson()};

OffersResponseBody _$OffersResponseBodyFromJson(Map<String, dynamic> json) =>
    OffersResponseBody(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Offer.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      hasNextPage: json['hasNextPage'] as bool?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
    );

Map<String, dynamic> _$OffersResponseBodyToJson(OffersResponseBody instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
    };

Offer _$OfferFromJson(Map<String, dynamic> json) => Offer(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  coverUrl: json['coverUrl'] as String?,
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$OfferToJson(Offer instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'coverUrl': instance.coverUrl,
  'createdAt': instance.createdAt,
};
