import 'package:json_annotation/json_annotation.dart';

part 'fetch_categories_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchCategoriesResponse {
  final List<Category> categories;

  FetchCategoriesResponse({required this.categories});

  factory FetchCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchCategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchCategoriesResponseToJson(this);
}

@JsonSerializable()
class Category {
  final String? id, name, description, coverPictureUrl;

  Category({this.id, this.name, this.description, this.coverPictureUrl});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
