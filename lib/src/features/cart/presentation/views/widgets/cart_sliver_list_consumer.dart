part of '../../../cart.dart';

class CartSliverListConsumer extends ConsumerWidget {
  const CartSliverListConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(fetchCartProvider);
    return cart.when(
      skipError: true,
      skipLoadingOnRefresh: true,
      loading: () => SliverList.separated(
        itemCount: 10,
        itemBuilder: (_, index) => const CartItemWidget(),
        separatorBuilder: (_, _) => 16.verticalSpace,
      ),
      data: (cart) {
        final cartItems = cart.cartItems;
        return cartItems.isNotEmpty
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
}
