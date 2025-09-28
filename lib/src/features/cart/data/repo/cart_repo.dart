part of '../../cart.dart';

final cartRepoProvider = Provider.autoDispose<CartRepo>((ref) {
  final apiService = ref.read(cartApiServiceProvider);
  return CartRepo(apiService);
});

class CartRepo {
  final CartApiService _apiService;

  CartRepo(this._apiService);

  Future<ApiRequestResult<AddToCartRequestResponse>> addToCart(
    AddToCartRequestBody body,
  ) => executeAndHandleApiRequest<AddToCartRequestResponse>(
    () async => await _apiService.addToCart(body),
  );

  Future<ApiRequestResult<FetchCartRequestResponse>> fetchCart() =>
      executeAndHandleApiRequest<FetchCartRequestResponse>(
        () async => await _apiService.fetchCart(),
      );
}
