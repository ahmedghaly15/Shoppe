import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_input_form_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadForm(
      child: Column(
        spacing: 8.h,
        children: const [
          CustomInputFormField(placeholderText: AppStrings.name),
          CustomInputFormField(placeholderText: AppStrings.email),
          CustomInputFormField(placeholderText: AppStrings.password),
        ],
      ),
    );
  }
}
