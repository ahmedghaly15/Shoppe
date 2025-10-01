part of '../../../product_details.dart';

class AddToCartAndBuyNowButtons extends StatelessWidget {
  const AddToCartAndBuyNowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.w,
      children: [
        const AddToCartConsumerButton(),
        Expanded(
          child: PrimaryButton(onPressed: () {}, text: AppStrings.buyNow),
        ),
      ],
    );
  }
}
