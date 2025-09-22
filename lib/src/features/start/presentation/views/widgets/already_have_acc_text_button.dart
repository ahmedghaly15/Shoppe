part of '../../../start.dart';

class AlreadyHaveAccTextButton extends StatelessWidget {
  const AlreadyHaveAccTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18.h),
      child: TextButton.icon(
        onPressed: () => context.pushRoute(const LoginRoute()),
        label: CircleAvatar(
          radius: 15.r,
          backgroundColor: AppColors.primaryColor,
          child: const Icon(LucideIcons.arrowRight),
        ),
        icon: const Text(AppStrings.alreadyHaveAnAccount),
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          textStyle: AppTextStyles.font15Regular,
          iconColor: Colors.white,
        ),
      ),
    );
  }
}
