part of '../../../otp.dart';

class DidntReceiveOtp extends StatelessWidget {
  const DidntReceiveOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5.w,
      children: [
        Text(AppStrings.didntReceiveOtp, style: AppTextStyles.font15Regular),
        const ResendOtpTextButtonConsumer(),
      ],
    );
  }
}
