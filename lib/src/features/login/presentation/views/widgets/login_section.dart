part of '../../../login.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.login, style: AppTextStyles.font52Bold),
        Container(
          margin: EdgeInsets.only(top: 8.h, bottom: 18.h),
          child: Text(
            AppStrings.goodToSeeYouBack,
            style: AppTextStyles.font19Regular,
          ),
        ),
        const LoginFormConsumer(),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: TextButton(
            onPressed: () => context.pushRoute(const ResetPassProcessRoute()),
            child: const Text(AppStrings.forgotPass),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 36.h, bottom: 14.h),
          child: const LoginConsumerButton(),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 14.h),
          alignment: Alignment.center,
          child: const CancelTextButton(),
        ),
      ],
    );
  }
}
