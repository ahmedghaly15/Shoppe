part of '../../cart.dart';

final fetchProductProvider = FutureProvider.autoDispose.family<Product, String>(
  (ref, productId) async {
    final result = await ref.read(cartRepoProvider).fetchProduct(productId);
    return result.when(
      success: (product) => product,
      failure: (error) => throw error.getAllErrorMsgs(),
    );
  },
);
