part of '../../../cart.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key, this.cartItem});

  final CartItem? cartItem;

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: Container(
        width: double.infinity,
        height: cartItem != null ? null : 109.h,
        margin: EdgeInsets.only(bottom: 14.h),
        child: Row(
          spacing: 10.w,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShadowContainer(
              child: ClipRRect(
                borderRadius: Consts.itemRadius,
                child: CustomCachedNetworkImage(
                  imageUrl: cartItem?.productCoverUrl ?? '',
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.h,
              children: [
                Expanded(
                  child: Text(
                    cartItem?.productName ?? 'Cart Item Name',
                    style: AppTextStyles.font15Bold,
                  ),
                ),
                Row(
                  spacing: 16.w,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${cartItem?.totalPrice}?? Price',
                      style: AppTextStyles.font13Bold,
                    ),
                    const ProductQuantityIconButtonsConsumer(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
