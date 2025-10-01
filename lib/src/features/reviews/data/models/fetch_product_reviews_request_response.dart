import 'package:flutter/material.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';

part 'fetch_product_reviews_request_response.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class FetchProductReviewsRequestResponse {
  final String? message;
  final double? averageRating;
  final int? reviewsCount;
  final ReviewsResponse? reviews;

  const FetchProductReviewsRequestResponse({
    this.message,
    this.averageRating,
    this.reviewsCount,
    this.reviews,
  });

  factory FetchProductReviewsRequestResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$FetchProductReviewsRequestResponseFromJson(json);
  Map<String, dynamic> toJson() =>
      _$FetchProductReviewsRequestResponseToJson(this);
}

@immutable
@JsonSerializable(explicitToJson: true)
class ReviewsResponse {
  @JsonKey(name: 'items')
  final List<Review> reviews;
  final int page, pageSize, totalCount;
  final bool hasNextPage, hasPreviousPage;

  const ReviewsResponse({
    required this.reviews,
    required this.page,
    required this.pageSize,
    required this.totalCount,
    required this.hasNextPage,
    required this.hasPreviousPage,
  });

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewsResponseToJson(this);
}

@immutable
@JsonSerializable()
class Review {
  final String comment, createdAt, userName;
  final String? userPicture;
  final double rating;

  const Review({
    required this.comment,
    required this.createdAt,
    required this.rating,
    required this.userName,
    this.userPicture,
  });

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}
