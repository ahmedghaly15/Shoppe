part of '../../cart.dart';

final fetchCartProvider = FutureProvider.autoDispose<FetchCartRequestResponse>((
  ref,
) async {
  final result = await ref.read(cartRepoProvider).fetchCart();
  return result.when(
    success: (data) {
      ref.read(cartItemsProvider.notifier).set(data.cartItems);
      return data;
    },
    failure: (error) => throw error.getAllErrorMsgs,
  );
});

final class CartItemsNotifier extends Notifier<List<CartItem>> {
  @override
  List<CartItem> build() => [];

  void set(List<CartItem> cartItems) => state = cartItems;
}

final cartItemsProvider =
    NotifierProvider.autoDispose<CartItemsNotifier, List<CartItem>>(
      CartItemsNotifier.new,
    );

final cartItemsTotalPriceProvider = Provider.autoDispose<double>((ref) {
  final cartItems = ref.watch(cartItemsProvider);

  return cartItems.fold(0, (prev, cartItem) {
    final quantity = ref.watch(productQuantityProvider(cartItem.productId));
    return prev + (cartItem.totalPrice * quantity);
  });
});
