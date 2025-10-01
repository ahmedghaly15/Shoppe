import 'package:flutter/material.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';

part 'fetch_categories_response.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class FetchCategoriesResponse {
  final List<Category> categories;

  const FetchCategoriesResponse({required this.categories});

  factory FetchCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchCategoriesResponseToJson(this);
}

@immutable
@JsonSerializable()
class Category {
  final String? id, name, description, coverPictureUrl;

  const Category({this.id, this.name, this.description, this.coverPictureUrl});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
