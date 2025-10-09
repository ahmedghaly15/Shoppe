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
              Container(
                padding: EdgeInsets.all(5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    topRight: Radius.circular(8.r),
                    bottomLeft: Radius.circular(8.r),
                  ),
                  gradient: const LinearGradient(
                    colors: [Color(0xffFF5790), Color(0xffF81140)],
                    stops: [0, 1],
                    begin: AlignmentDirectional.bottomEnd,
                    end: AlignmentDirectional.topStart,
                  ),
                ),
                child: Text(
                  '-$discountPercentage%',
                  style: AppTextStyles.font13Bold.copyWith(color: Colors.white),
                ),
              ),
            ],
          );
  }

  Text _priceText() {
    return Text(
      '\$${price.toStringAsFixed(1)}',
      style: AppTextStyles.font15Bold.copyWith(
        decoration: TextDecoration.lineThrough,
        color: AppColors.colorF1AEAE,
        decorationColor: AppColors.colorF1AEAE,
      ),
    );
  }
}
