import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../config/theming/app_colors.dart';
import '../../../../../config/theming/app_text_styles.dart';
import '../../../../../core/utils/app_strings.dart';

class AlreadyHaveAccTextButton extends StatelessWidget {
  const AlreadyHaveAccTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18.h),
      child: TextButton.icon(
        onPressed: () {},
        label: CircleAvatar(
          radius: 15.r,
          backgroundColor: AppColors.primaryColor,
          child: const Icon(LucideIcons.arrowRight),
        ),
        icon: const Text(AppStrings.alreadyHaveAnAccount),
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          textStyle: AppTextStyles.font15Regular,
          iconColor: Colors.white,
        ),
      ),
    );
  }
}
