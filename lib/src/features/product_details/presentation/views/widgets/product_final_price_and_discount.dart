part of '../../../product_details.dart';

class ProductFinalPriceAndDiscount extends StatelessWidget {
  const ProductFinalPriceAndDiscount({
    super.key,
    required this.price,
    this.discountPercentage,
  });

  final double price;
  final int? discountPercentage;

  @override
  Widget build(BuildContext context) {
    return discountPercentage == null
        ? _priceText()
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _priceText(),
              Text(
                '$discountPercentage% ${AppStrings.off}',
                style: AppTextStyles.font15Regular,
              ),
            ],
          );
  }

  Text _priceText() {
    return Text(
      '\$$price',
      style: AppTextStyles.font15Bold.copyWith(
        decoration: TextDecoration.lineThrough,
        color: AppColors.colorF1AEAE,
      ),
    );
  }
}
