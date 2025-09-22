part of '../../../register.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.createAccount,
            style: AppTextStyles.font52Bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 54.h, bottom: 32.h),
          child: const RegisterForm(),
        ),
        Container(
          margin: EdgeInsets.only(top: 52.h, bottom: 24.h),
          child: const RegisterConsumerButton(),
        ),
        const Center(child: CancelTextButton()),
      ],
    );
  }
}
