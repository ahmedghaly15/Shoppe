part of '../../../cart.dart';

class CheckoutButtonConsumer extends ConsumerWidget {
  const CheckoutButtonConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCheckout = ref.watch(checkoutProvider);
    final cartLength = ref.watch(cartLengthProvider);
    _checkoutProviderListener(ref, context);
    return cartLength >= 1
        ? PrimaryButton(
            onPressed: () => ref
                .read(checkoutProvider.notifier)
                .checkout(
                  CheckoutRequestBody(
                    paymentMethod: "Visa Card",
                    shippingAddressId: "cb89e1b8-1a5b-45c9-9e9b-8e0e200c2aab",
                  ),
                ),
            text: AppStrings.checkout,
            child: asyncCheckout.isLoading
                ? const AdaptiveCircularProgressIndicator()
                : null,
          )
        : const SizedBox.shrink();
  }

  void _checkoutProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      checkoutProvider,
      (_, current) => current.whenOrNull(
        error: (error, _) {
          final apiErrorModel = error as ApiErrorModel;
          context.showToast(apiErrorModel.getAllErrorMsgs());
        },
      ),
    );
  }
}
