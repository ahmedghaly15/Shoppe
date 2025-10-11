part of '../../../cart.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key, required this.cartItem});

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.w,
      children: [
        Flexible(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: ShadowContainer(
                  child: ClipRRect(
                    borderRadius: Consts.itemRadius,
                    child: CustomCachedNetworkImage(
                      imageUrl: cartItem.productCoverUrl,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(LucideIcons.trash, color: Colors.red),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                cartItem.productName.capitalize(),
                style: AppTextStyles.font15Bold,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.h),
                child: _CartItemTotalPriceConsumer(
                  unitPrice: cartItem.totalPrice,
                  productId: cartItem.productId,
                ),
              ),
              ProductQuantityIconButtonsConsumer(
                quantity: cartItem.quantity,
                productId: cartItem.productId,
              ),
            ],
          ),
        ),
      ],
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
