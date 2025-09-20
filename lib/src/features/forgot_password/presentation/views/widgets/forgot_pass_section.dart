import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theming/app_text_styles.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/cancel_text_button.dart';
import 'forgot_pass_button_consumer.dart';
import 'forgot_password_form_consumer.dart';

class ForgotPassSection extends StatelessWidget {
  const ForgotPassSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.forgotPasswordViewTitle,
          style: AppTextStyles.font52Bold,
        ),
        Container(
          margin: EdgeInsets.only(top: 8.h, bottom: 18.h),
          child: Text(
            AppStrings.typeEmailToRecoverPassword,
            style: AppTextStyles.font19Regular,
          ),
        ),
        const ForgotPasswordFormConsumer(),
        Container(
          margin: EdgeInsets.only(top: 36.h, bottom: 14.h),
          child: const ForgotPassButtonConsumer(),
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
