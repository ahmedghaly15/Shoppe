import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../config/cache/cache_helper.dart' show CacheHelper;
import '../../config/cache/cache_keys.dart';
import '../../features/login/data/models/login_request_response.dart';
import '../widgets/shad_dialog_view.dart';

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

extension ShowShadDialog on BuildContext {
  void showDialog(
    Widget child, {
    Widget? title,
    Widget? description,
    String? titleText,
    String? descriptionText,
    List<Widget> actions = const [],
  }) {
    showShadDialog(
      context: this,
      builder: (context) => ShadDialogView(
        title: title,
        description: description,
        titleText: titleText,
        descriptionText: descriptionText,
        actions: actions,
        child: child,
      ),
    );
  }
}

extension LoginResponseCacheHelper on CacheHelper {
  Future<void> cacheLoginResponse(LoginRequestResponse response) async {
    final jsonString = jsonEncode(response.toJson());
    await setData(CacheKeys.loginResponse, jsonString);
  }

  Future<LoginRequestResponse?> getCachedLoginResponse() async {
    final jsonString = await getString(CacheKeys.loginResponse);
    if (jsonString == null) return null;
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return LoginRequestResponse.fromJson(jsonMap);
  }

  Future<void> clearLoginCache() async {
    await removeData(CacheKeys.loginResponse);
  }
}
