part of '../../../product_details.dart';

class ProductQuantityIconButtonsConsumer extends ConsumerWidget {
  const ProductQuantityIconButtonsConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      spacing: 6.w,
      children: [
        _outlinedIconButton(
          () => ref.read(productQuantityProvider.notifier).decrement(),
          LucideIcons.minus,
        ),
        const _QuantityTextConsumer(),
        _outlinedIconButton(
          () => ref.read(productQuantityProvider.notifier).increment(),
          LucideIcons.plus,
        ),
      ],
    );
  }

  IconButton _outlinedIconButton(void Function()? onPressed, IconData icon) {
    return IconButton.outlined(
      color: AppColors.primaryColor,
      style: IconButton.styleFrom(foregroundColor: AppColors.primaryColor),
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}

class _QuantityTextConsumer extends ConsumerWidget {
  const _QuantityTextConsumer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.watch(productQuantityProvider);
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
