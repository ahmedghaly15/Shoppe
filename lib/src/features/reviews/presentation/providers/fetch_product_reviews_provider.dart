part of '../../reviews.dart';

final fetchProductReviewsProvider = FutureProvider.autoDispose
    .family<FetchProductReviewsRequestResponse, String>((ref, productId) async {
      final body = FetchProductReviewsRequestBody(productId: productId);
      final result = await ref
          .read(reviewsRepoProvider)
          .fetchProductReviews(body);
      return result.when(
        success: (data) => data,
        failure: (error) => throw error.getAllErrorMsgs,
      );
    });
