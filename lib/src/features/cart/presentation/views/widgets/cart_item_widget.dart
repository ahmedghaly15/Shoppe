part of '../../../cart.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key, this.cartItem});

  final CartItem? cartItem;

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        leading: ShadowContainer(
          child: ClipRRect(
            borderRadius: Consts.itemRadius,
            child: CustomCachedNetworkImage(
              imageUrl: cartItem?.productCoverUrl ?? '',
            ),
          ),
        ),
        title: Text(
          cartItem?.productName.capitalize() ?? 'Cart Item Name',
          style: AppTextStyles.font15Bold,
        ),
        subtitle: Container(
          margin: EdgeInsets.only(top: 16.h),
          child: Row(
            spacing: 16.w,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _CartItemTotalPriceConsumer(
                unitPrice: cartItem!.totalPrice,
                productId: cartItem!.productId,
              ),
              ProductQuantityIconButtonsConsumer(quantity: cartItem?.quantity),
            ],
          ),
        ),
      ),
    );
  }
}

class _CartItemTotalPriceConsumer extends ConsumerWidget {
  const _CartItemTotalPriceConsumer({
    required this.unitPrice,
    required this.productId,
  });

  final double unitPrice;
  final String productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.watch(productQuantityProvider(productId));
    final total = unitPrice * quantity;
    return Text(
      '\$${total.toStringAsFixed(1)}',
      style: AppTextStyles.font13Bold,
    );
  }
}
