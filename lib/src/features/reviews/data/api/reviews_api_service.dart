import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart' show EndPoints, dioProvider;
import '../models/fetch_product_reviews_request_body.dart';
import '../models/fetch_product_reviews_request_response.dart';

part 'reviews_api_service.g.dart';

final reviewsApiServiceProvider = Provider.autoDispose<ReviewsApiService>((
  ref,
) {
  final dio = ref.read(dioProvider);
  return ReviewsApiService(dio);
});

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ReviewsApiService {
  factory ReviewsApiService(Dio dio, {String baseUrl}) = _ReviewsApiService;

  @GET('${EndPoints.reviews}/{productId}')
  Future<FetchProductReviewsRequestResponse> fetchProductReviews(
    @Path('productId') String productId,
    @Body() FetchProductReviewsRequestBody body,
  );
}
