part of '../../../product_details.dart';

class ProductQuantityIconButtonsConsumer extends ConsumerWidget {
  const ProductQuantityIconButtonsConsumer({
    super.key,
    this.quantity,
    required this.productId,
  });

  final int? quantity;
  final String productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      spacing: 6.w,
      mainAxisSize: MainAxisSize.min,
      children: [
        _outlinedIconButton(
          () =>
              ref.read(productQuantityProvider(productId).notifier).decrement(),
          LucideIcons.minus,
        ),
        _QuantityTextConsumer(quantity: quantity, productId: productId),
        _outlinedIconButton(
          () =>
              ref.read(productQuantityProvider(productId).notifier).increment(),
          LucideIcons.plus,
        ),
      ],
    );
  }

  ShadButton _outlinedIconButton(void Function()? onPressed, IconData icon) {
    return ShadButton.outline(
      decoration: ShadDecoration(
        border: ShadBorder.all(color: AppColors.primaryColor),
        shape: BoxShape.circle,
      ),
      foregroundColor: AppColors.primaryColor,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

class _QuantityTextConsumer extends ConsumerWidget {
  const _QuantityTextConsumer({this.quantity, required this.productId});

  final int? quantity;
  final String productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.watch(productQuantityProvider(productId));
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: BoxDecoration(
        color: AppColors.colorE5EBFC,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text('$quantity', style: AppTextStyles.font15Bold),
    );
  }
}
