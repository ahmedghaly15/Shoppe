part of '../../../cart.dart';

class CartSliverListConsumer extends ConsumerWidget {
  const CartSliverListConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(fetchCartProvider);
    return cart.when(
      loading: () => SliverList.builder(
        itemCount: 10,
        itemBuilder: (_, index) => const CartItemWidget(),
      ),
      data: (cart) {
        final cartItems = cart.cartItems;
        return cartItems.isNotEmpty
            ? const SliverFillRemaining(
                hasScrollBody: false,
                child: EmptyView(
                  imgPath: Assets.imagesEmptyCart,
                  description: AppStrings.emptyCart,
                ),
              )
            : SliverList.builder(
                itemCount: cartItems.length,
                itemBuilder: (_, index) {
                  final cartItem = cartItems[index];
                  return CartItemWidget(cartItem: cartItem);
                },
              );
      },
      error: (error, _) => SliverFillRemaining(
        hasScrollBody: false,
        child: CustomErrorWidget(error: error.toString()),
      ),
    );
  }
}
