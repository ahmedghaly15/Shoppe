import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theming/app_text_styles.dart';
import '../../../../../core/utils/app_strings.dart';
import 'resend_otp_text_button_consumer.dart';

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
