part of '../../../product_details.dart';

class ProductDetailSectionTitle extends StatelessWidget {
  const ProductDetailSectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17.h, bottom: 14.h),
      child: Text(title, style: AppTextStyles.font19Bold),
    );
  }
}
