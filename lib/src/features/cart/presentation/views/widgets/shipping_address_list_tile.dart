part of '../../../cart.dart';

class ShippingAddressListTile extends StatelessWidget {
  const ShippingAddressListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 16.w),
      tileColor: AppColors.colorF9F9F9,
      title: const Text(AppStrings.shippingAddress),
      titleTextStyle: AppTextStyles.font13Bold,
      horizontalTitleGap: 5.h,
      subtitle: const Text(
        '26, Duong So 2, Thao Dien Ward, An Phu, District 2, Ho Chi Minh city',
      ),
      subtitleTextStyle: AppTextStyles.font10Regular,
      trailing: IconButton.filled(
        style: IconButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
        ),
        onPressed: () {},
        icon: const Icon(LucideIcons.pen),
      ),
    );
  }
}
