part of '../../../cart.dart';

class CartLengthConsumer extends ConsumerWidget {
  const CartLengthConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartLength = ref.watch(cartLengthProvider);
    return cartLength >= 1 ? Text('$cartLength') : const SizedBox.shrink();
  }
}
