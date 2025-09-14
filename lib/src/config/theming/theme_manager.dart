import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../core/utils/const_strings.dart';
import 'app_colors.dart';

class ThemeManager {
  ThemeManager._();

  static ShadThemeData get lightMode => ShadThemeData(
    colorScheme: const ShadSlateColorScheme.light(
      background: Colors.white,
      primary: AppColors.primaryColor,
    ),
    brightness: Brightness.dark,
    primaryButtonTheme: ShadButtonTheme(
      size: ShadButtonSize.lg,
      pressedBackgroundColor: AppColors.primaryColor.withAlpha(102),
      height: 61.h,
      decoration: ShadDecoration(
        border: ShadBorder(radius: BorderRadius.circular(16.r)),
      ),
    ),
    textTheme: ShadTextTheme(family: ConstStrings.fontFamily),
  );
}
