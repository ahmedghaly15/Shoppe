import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../config/theming/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.text,
    this.child,
    this.leading,
    this.onPressed,
    this.expands = true,
    this.size,
    this.decoration,
  });

  final String? text;
  final Widget? child, leading;
  final VoidCallback? onPressed;
  final bool? expands;
  final ShadButtonSize? size;
  final ShadDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return ShadButton(
      size: size,
      decoration: decoration,
      onPressed: onPressed,
      leading: leading,
      expands: expands,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child:
          child ??
          Text(
            text!,
            style: AppTextStyles.font19Regular.copyWith(color: Colors.white),
          ),
    );
  }
}
