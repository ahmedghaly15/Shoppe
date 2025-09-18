import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theming/app_text_styles.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/cancel_text_button.dart';
import 'register_consumer_button.dart';
import 'register_form_consumer.dart';

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
