part of '../../reviews.dart';

final reviewsRepoProvider = Provider.autoDispose<ReviewsRepo>((ref) {
  final apiService = ref.read(reviewsApiServiceProvider);
  return ReviewsRepoImpl(apiService);
});

abstract class ReviewsRepo {
  Future<ApiRequestResult<FetchProductReviewsRequestResponse>>
  fetchProductReviews(FetchProductReviewsRequestBody body);
}

class ReviewsRepoImpl extends ReviewsRepo {
  final ReviewsApiService _apiService;

  ReviewsRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<FetchProductReviewsRequestResponse>>
  fetchProductReviews(FetchProductReviewsRequestBody body) {
    return executeAndHandleApiRequest<FetchProductReviewsRequestResponse>(
      () async => await _apiService.fetchProductReviews(body.productId, body),
    );
  }
}
