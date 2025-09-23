part of '../../home.dart';

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
}
