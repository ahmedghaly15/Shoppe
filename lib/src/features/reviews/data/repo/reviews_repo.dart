part of '../../reviews.dart';

final reviewsRepoProvider = Provider.autoDispose<ReviewsRepo>((ref) {
  final apiService = ref.read(reviewsApiServiceProvider);
  return ReviewsRepo(apiService);
});

class ReviewsRepo {
  final ReviewsApiService _apiService;

  ReviewsRepo(this._apiService);

  Future<ApiRequestResult<FetchProductReviewsRequestResponse>>
  fetchProductReviews(FetchProductReviewsRequestBody body) {
    return executeAndHandleApiRequest<FetchProductReviewsRequestResponse>(
      () async => await _apiService.fetchProductReviews(body.productId, body),
    );
  }
}
