part of '../../../cart.dart';

class TotalPriceAndCheckoutButton extends StatelessWidget {
  const TotalPriceAndCheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.w,
      children: const [
        Expanded(child: _TotalCartItemsTextConsumer()),
        Expanded(child: CheckoutButtonConsumer()),
      ],
    );
  }
}

class _TotalCartItemsTextConsumer extends ConsumerWidget {
  const _TotalCartItemsTextConsumer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalCartItemsPrice = ref.watch(cartItemsTotalPriceProvider);
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: AppStrings.total, style: AppTextStyles.font21Bold),
          TextSpan(
            text: ' \$${totalCartItemsPrice.toStringAsFixed(1)}',
            style: AppTextStyles.font15Bold,
          ),
        ],
      ),
    );
  }
}
