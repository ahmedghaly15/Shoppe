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
    _addToCartProviderListener(ref, context);
    return PrimaryButton(
      onPressed: asyncAddToCart.isLoading
          ? null
          : () {
              ref.read(addToCartProvider.notifier).addToCart(productId!);
            },
      backgroundColor: AppColors.color202020,
      text: AppStrings.addToCart,
      child: asyncAddToCart.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }

  void _addToCartProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      addToCartProvider,
      (_, current) => current.whenOrNull(
        data: (data) => context.showDialog(
          contentText: AppStrings.productAddedToCartSuccessfully,
        ),
        error: (error, _) {
          final apiErrorModel = error as ApiErrorModel;
          context.showToast(apiErrorModel.getAllErrorMsgs());
        },
      ),
    );
  }
}
