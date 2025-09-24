part of '../../home.dart';

final homeRepoProvider = Provider.autoDispose<HomeRepo>((ref) {
  final apiService = ref.read(homeApiServiceProvider);
  return HomeRepo(apiService);
});

class HomeRepo {
  final HomeApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiRequestResult<FetchOffersRequestResponse>> fetchOffers(
    FetchOffersRequestBody body,
  ) {
    return executeAndHandleApiRequest<FetchOffersRequestResponse>(
      () async => await _apiService.fetchOffers(body),
    );
  }

  Future<ApiRequestResult<FetchCategoriesResponse>> fetchCategories() {
    return executeAndHandleApiRequest<FetchCategoriesResponse>(
      () async => await _apiService.fetchCategories(),
    );
  }
}
