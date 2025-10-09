part of '../../../cart.dart';

class CartLengthConsumer extends ConsumerWidget {
  const CartLengthConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(fetchCartProvider);
    return cart.whenOrNull(
          skipError: true,
          skipLoadingOnRefresh: true,
          data: (data) => data.cartItems.isEmpty
              ? const SizedBox.shrink()
              : Text('${data.cartItems.length}'),
        ) ??
        const SizedBox.shrink();
  }
}
