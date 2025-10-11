part of '../../cart.dart';

final class RemoveProductFromCart extends AsyncNotifier<bool> {
  final String itemId;

  RemoveProductFromCart(this.itemId);

  @override
  FutureOr<bool> build() => false;

  Future<void> removeProduct() async {
    state = const AsyncLoading();
    final body = RemoveProductFromCartRequestBody(itemId: itemId);
    final result = await ref.read(cartRepoProvider).removeProductFromCart(body);
    result.when(
      success: (_) => state = const AsyncValue.data(true),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs, StackTrace.current),
    );
  }
}

final removeProductFromCartProvider = AsyncNotifierProvider.autoDispose
    .family<RemoveProductFromCart, bool, String>(RemoveProductFromCart.new);
