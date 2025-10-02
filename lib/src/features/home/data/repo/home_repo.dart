part of '../../home.dart';

final homeRepoProvider = Provider.autoDispose<HomeRepo>((ref) {
  final apiService = ref.read(homeApiServiceProvider);
  return HomeRepoImpl(apiService);
});

abstract class HomeRepo {
  Future<ApiRequestResult<FetchOffersRequestResponse>> fetchOffers(
    FetchOffersRequestBody body,
  );
  Future<ApiRequestResult<FetchCategoriesResponse>> fetchCategories();
  Future<ApiRequestResult<FetchProductsRequestResponse>> fetchProducts(
    FetchProductsRequestBody body,
  );
}

class HomeRepoImpl extends HomeRepo {
  final HomeApiService _apiService;

  HomeRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<FetchOffersRequestResponse>> fetchOffers(
    FetchOffersRequestBody body,
  ) {
    return executeAndHandleApiRequest<FetchOffersRequestResponse>(
      () async => await _apiService.fetchOffers(body),
    );
  }

  @override
  Future<ApiRequestResult<FetchCategoriesResponse>> fetchCategories() {
    return executeAndHandleApiRequest<FetchCategoriesResponse>(
      () async => await _apiService.fetchCategories(),
    );
  }

  @override
  Future<ApiRequestResult<FetchProductsRequestResponse>> fetchProducts(
    FetchProductsRequestBody body,
  ) {
    return executeAndHandleApiRequest<FetchProductsRequestResponse>(
      () async => await _apiService.fetchProducts(body),
    );
  }
}
