part of '../../../product_details.dart';

class ProductQuantityIconButtonsConsumer extends ConsumerWidget {
  const ProductQuantityIconButtonsConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      spacing: 6.w,
      children: [
        IconButton(
          onPressed: () =>
              ref.read(productQuantityProvider.notifier).decrement(),
          icon: CircleAvatar(
            radius: 16.r,
            child: const Icon(LucideIcons.minus, color: Colors.white),
          ),
        ),
        const _QuantityTextConsumer(),
        IconButton(
          onPressed: () =>
              ref.read(productQuantityProvider.notifier).increment(),
          icon: CircleAvatar(
            radius: 16.r,
            child: const Icon(LucideIcons.plus, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class _QuantityTextConsumer extends ConsumerWidget {
  const _QuantityTextConsumer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.watch(productQuantityProvider);
    return Text('$quantity', style: AppTextStyles.font15Regular);
  }
}
