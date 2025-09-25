// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_product_reviews_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchProductReviewsRequestResponse _$FetchProductReviewsRequestResponseFromJson(
  Map<String, dynamic> json,
) => FetchProductReviewsRequestResponse(
  message: json['message'] as String?,
  averageRating: (json['averageRating'] as num?)?.toDouble(),
  reviewsCount: (json['reviewsCount'] as num?)?.toInt(),
  reviews: json['reviews'] == null
      ? null
      : ReviewsResponse.fromJson(json['reviews'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FetchProductReviewsRequestResponseToJson(
  FetchProductReviewsRequestResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'averageRating': instance.averageRating,
  'reviewsCount': instance.reviewsCount,
  'reviews': instance.reviews?.toJson(),
};

ReviewsResponse _$ReviewsResponseFromJson(Map<String, dynamic> json) =>
    ReviewsResponse(
      reviews: (json['items'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      hasNextPage: json['hasNextPage'] as bool,
      hasPreviousPage: json['hasPreviousPage'] as bool,
    );

Map<String, dynamic> _$ReviewsResponseToJson(ReviewsResponse instance) =>
    <String, dynamic>{
      'items': instance.reviews.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
    };

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
  comment: json['comment'] as String,
  createdAt: json['createdAt'] as String,
  rating: (json['rating'] as num).toDouble(),
  userName: json['userName'] as String,
  userPicture: json['userPicture'] as String?,
);

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
  'comment': instance.comment,
  'createdAt': instance.createdAt,
  'userName': instance.userName,
  'userPicture': instance.userPicture,
  'rating': instance.rating,
};
