part of '../../home.dart';

final fetchProductsProvider =
    FutureProvider.autoDispose<FetchProductsRequestResponse>((ref) async {
      const body = FetchProductsRequestBody();
      final result = await ref.read(homeRepoProvider).fetchProducts(body);
      return result.when(
        success: (data) => data,
        failure: (error) => throw error.getAllErrorMsgs,
      );
    });
