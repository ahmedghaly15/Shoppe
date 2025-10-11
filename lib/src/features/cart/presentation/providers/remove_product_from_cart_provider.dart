part of '../../cart.dart';

final class RemoveProductFromCart extends AsyncNotifier<bool> {
  @override
  FutureOr<bool> build() => false;

  Future<void> removeProduct(String productId) async {
    state = const AsyncLoading();
    final result = await ref
        .read(cartRepoProvider)
        .removeProductFromCart(productId);
    result.when(
      success: (_) => state = const AsyncValue.data(true),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs, StackTrace.current),
    );
  }
}

final removeProductFromCartProvider =
    AsyncNotifierProvider.autoDispose<RemoveProductFromCart, bool>(
      RemoveProductFromCart.new,
    );
