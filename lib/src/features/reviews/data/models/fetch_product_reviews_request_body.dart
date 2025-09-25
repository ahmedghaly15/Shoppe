import 'package:json_annotation/json_annotation.dart';

part 'fetch_product_reviews_request_body.g.dart';

@JsonSerializable()
class FetchProductReviewsRequestBody {
  final String productId;
  final int page, pageSize;

  FetchProductReviewsRequestBody({
    required this.productId,
    this.page = 1,
    this.pageSize = 10,
  });

  factory FetchProductReviewsRequestBody.fromJson(Map<String, dynamic> json) =>
      _$FetchProductReviewsRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$FetchProductReviewsRequestBodyToJson(this);
}
