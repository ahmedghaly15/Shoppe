part of '../../../product_details.dart';

class AddToCartConsumerButton extends ConsumerWidget {
  const AddToCartConsumerButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productId = context.routeData
        .argsAs<ProductDetailsRouteArgs>()
        .product
        .id;
    final asyncAddToCart = ref.watch(addToCartProvider);
    return PrimaryButton(
      onPressed: asyncAddToCart.isLoading
          ? () {
              ref.read(addToCartProvider.notifier).addToCart(productId!);
            }
          : null,
      backgroundColor: AppColors.color202020,
      text: AppStrings.addToCart,
      child: asyncAddToCart.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }
}
