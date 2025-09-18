import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/theming/app_text_styles.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/cancel_text_button.dart';
import 'login_consumer_button.dart';
import 'login_form_consumer.dart';

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
            onPressed: () => context.pushRoute(const ForgotPasswordRoute()),
            child: const Text(AppStrings.forgotPassword),
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
