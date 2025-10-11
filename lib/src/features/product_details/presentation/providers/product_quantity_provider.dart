part of '../../product_details.dart';

class ProductQuantityNotifier extends Notifier<int> {
  final String productId;

  ProductQuantityNotifier(this.productId);

  @override
  int build() {
    final cartItems = ref.watch(cartItemsProvider);
    if (cartItems.isEmpty) return 1;
    final item = cartItems.firstWhereOrNull(
      (cartItem) => cartItem.productId == productId,
    );
    return item?.quantity ?? 1;
  }

  void increment() => state++;
  void decrement() {
    if (state > 1) state--;
  }
}

final productQuantityProvider = NotifierProvider.autoDispose
    .family<ProductQuantityNotifier, int, String>(ProductQuantityNotifier.new);
