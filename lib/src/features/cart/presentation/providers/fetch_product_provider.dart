part of '../../cart.dart';

final class FetchProductProvider extends AsyncNotifier<Product> {
  @override
  FutureOr<Product> build() => Product.empty();

  void fetchProduct(String productId) async {
    final result = await ref.read(cartRepoProvider).fetchProduct(productId);
    result.when(
      success: (product) => state = AsyncValue.data(product),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs(), StackTrace.current),
    );
  }
}

final fetchProductProvider =
    AsyncNotifierProvider.autoDispose<FetchProductProvider, Product>(
      FetchProductProvider.new,
    );
