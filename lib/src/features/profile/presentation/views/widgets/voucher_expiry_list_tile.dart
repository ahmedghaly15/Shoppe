part of '../../../profile.dart';

class VoucherExpiryListTile extends StatelessWidget {
  const VoucherExpiryListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        Assets.svgsVoucherExpiration,
        fit: BoxFit.cover,
      ),
      title: const Text(AppStrings.voucherExpires),
      titleTextStyle: AppTextStyles.font13Bold,
      subtitle: const Text(AppStrings.voucherExpiresDescription),
      subtitleTextStyle: AppTextStyles.font10Regular,
    );
  }
}
