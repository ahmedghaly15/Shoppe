import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

extension StringExtension on String? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}

extension KeyboardUnfocus on BuildContext {
  void unfocusKeyboard() => FocusScope.of(this).unfocus();
}

extension ShadThemeAccess on BuildContext {
  ShadThemeData get shadTheme => ShadTheme.of(this);
  ShadTextTheme get shadTextTheme => shadTheme.textTheme;
}

extension ShowToast on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showToast(
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        duration: duration,
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.black87,
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      ),
    );
  }
}
