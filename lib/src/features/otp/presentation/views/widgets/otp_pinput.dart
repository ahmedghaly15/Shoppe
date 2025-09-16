import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../../config/theming/app_colors.dart';
import '../../../../../core/helpers/input_field_validator.dart';
import '../../providers/otp_providers.dart';

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
