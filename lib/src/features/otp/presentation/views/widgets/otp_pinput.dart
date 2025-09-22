part of '../../../otp.dart';

class OtpPinput extends ConsumerWidget {
  const OtpPinput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(otpProvider);
    final defaultPinTheme = PinTheme(
      width: 50.w,
      height: 50.h,
      margin: EdgeInsetsDirectional.only(end: 6.w),
      decoration: BoxDecoration(
        color: AppColors.colorF8F8F8,
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
    return Pinput(
      controller: controller,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      length: 6,
      showCursor: true,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyDecorationWith(
        border: Border.all(color: AppColors.primaryColor, width: 2.w),
      ),
      errorPinTheme: defaultPinTheme.copyDecorationWith(
        border: Border.all(color: Colors.red, width: 2.w),
      ),
      validator: (value) => InputFieldValidator.validateOtpField(value),
    );
  }
}
