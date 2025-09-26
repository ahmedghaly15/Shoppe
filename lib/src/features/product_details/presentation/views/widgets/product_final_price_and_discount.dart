part of '../../../product_details.dart';

class ProductFinalPriceAndDiscount extends StatelessWidget {
  const ProductFinalPriceAndDiscount({
    super.key,
    required this.price,
    required this.discountPercentage,
  });

  final double price;
  final int discountPercentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$$price',
          style: AppTextStyles.font15Bold.copyWith(
            decoration: TextDecoration.lineThrough,
            color: AppColors.colorF1AEAE,
          ),
        ),
        Text(
          '$discountPercentage% ${AppStrings.off}',
          style: AppTextStyles.font15Regular,
        ),
      ],
    );
  }
}
