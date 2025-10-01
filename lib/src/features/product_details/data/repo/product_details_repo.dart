part of '../../product_details.dart';

final productDetailsRepoProvider = Provider.autoDispose<ProductDetailsRepo>((
  ref,
) {
  final apiService = ref.read(productDetailsApiServiceProvider);
  return ProductDetailsRepImpl(apiService);
});

abstract class ProductDetailsRepo {
  Future<ApiRequestResult<AddToCartRequestResponse>> addToCart(
    AddToCartRequestBody body,
  );
}

class ProductDetailsRepImpl extends ProductDetailsRepo {
  final ProductDetailsApiService _apiService;

  ProductDetailsRepImpl(this._apiService);

  @override
  Future<ApiRequestResult<AddToCartRequestResponse>> addToCart(
    AddToCartRequestBody body,
  ) => executeAndHandleApiRequest<AddToCartRequestResponse>(
    () async => await _apiService.addToCart(body),
  );
}
