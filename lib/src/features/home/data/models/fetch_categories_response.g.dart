// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchCategoriesResponse _$FetchCategoriesResponseFromJson(
  Map<String, dynamic> json,
) => FetchCategoriesResponse(
  categories: (json['categories'] as List<dynamic>)
      .map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FetchCategoriesResponseToJson(
  FetchCategoriesResponse instance,
) => <String, dynamic>{
  'categories': instance.categories.map((e) => e.toJson()).toList(),
};

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  coverPictureUrl: json['coverPictureUrl'] as String?,
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'coverPictureUrl': instance.coverPictureUrl,
};
