part of '../../cart.dart';

final cartRepoProvider = Provider.autoDispose<CartRepo>((ref) {
  final apiService = ref.read(cartApiServiceProvider);
  return CartRepoImpl(apiService);
});

abstract class CartRepo {
  Future<ApiRequestResult<FetchCartRequestResponse>> fetchCart();
  Future<ApiRequestResult<CheckoutRequestResponse>> checkout(
    CheckoutRequestBody body,
  );
}

class CartRepoImpl extends CartRepo {
  final CartApiService _apiService;

  CartRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<FetchCartRequestResponse>> fetchCart() =>
      executeAndHandleApiRequest<FetchCartRequestResponse>(
        () async => await _apiService.fetchCart(),
      );

  @override
  Future<ApiRequestResult<CheckoutRequestResponse>> checkout(
    CheckoutRequestBody body,
  ) => executeAndHandleApiRequest<CheckoutRequestResponse>(
    () async => await _apiService.checkout(body),
  );
}
