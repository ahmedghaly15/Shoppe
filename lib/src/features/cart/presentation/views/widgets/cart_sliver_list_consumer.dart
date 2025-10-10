part of '../../../cart.dart';

class CartSliverListConsumer extends ConsumerWidget {
  const CartSliverListConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(fetchCartProvider);
    _fetchCartProviderListener(ref);
    return cart.when(
      skipError: true,
      skipLoadingOnRefresh: true,
      loading: () => const SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: AdaptiveCircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
        ),
      ),
      data: (cart) {
        final cartItems = cart.cartItems;
        return cartItems.isEmpty
            ? const SliverFillRemaining(
                hasScrollBody: false,
                child: EmptyView(description: AppStrings.emptyCart),
              )
            : SliverList.separated(
                itemCount: cartItems.length,
                itemBuilder: (_, index) {
                  final cartItem = cartItems[index];
                  return CartItemWidget(cartItem: cartItem);
                },
                separatorBuilder: (_, _) => 16.verticalSpace,
              );
      },
      error: (error, _) => SliverFillRemaining(
        hasScrollBody: false,
        child: CustomErrorWidget(error: error.toString()),
      ),
    );
  }

  void _fetchCartProviderListener(WidgetRef ref) {
    ref.listen(
      fetchCartProvider,
      (_, current) => current.whenOrNull(
        data: (cart) =>
            ref.read(cartLengthProvider.notifier).set(cart.cartItems.length),
      ),
    );
  }
}
