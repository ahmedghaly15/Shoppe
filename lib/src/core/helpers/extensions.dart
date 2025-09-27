part of 'helpers.dart';

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
  void showToast(
    String message, {
    Duration duration = const Duration(seconds: 3),
    String? titleText,
  }) {
    ShadToaster.of(this).show(
      ShadToast(
        alignment: Alignment.bottomCenter,
        duration: duration,
        title: titleText == null ? null : Text(titleText),
        titleStyle: const TextStyle(color: Colors.white),
        description: Text(
          message,
          textAlign: titleText == null ? TextAlign.center : TextAlign.start,
        ),
        descriptionStyle: const TextStyle(color: Colors.white),
        radius: BorderRadius.circular(16.r),
        backgroundColor: Colors.black87,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      ),
    );
  }
}

extension ShowAdaptiveDialog<T> on BuildContext {
  Future<T?> showDialog({
    bool barrierDismissible = true,
    Widget? title,
    String? titleText,
    Widget? content,
    String? contentText,
    List<Widget>? actions,
  }) {
    return showAdaptiveDialog(
      context: this,
      barrierDismissible: true,
      useRootNavigator: true,
      useSafeArea: true,
      builder: (_) => AlertDialog.adaptive(
        alignment: Alignment.center,
        backgroundColor: Colors.white,
        elevation: 16.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: title ?? Text(titleText!, style: AppTextStyles.font19Bold),
        titlePadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        icon: Icon(LucideIcons.circleAlert, color: Colors.red, size: 40.h),
        content:
            content ?? Text(contentText!, style: AppTextStyles.font15Regular),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        actions: actions,
        actionsOverflowDirection: VerticalDirection.down,
        actionsPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        actionsOverflowButtonSpacing: 16.w,
        actionsOverflowAlignment: OverflowBarAlignment.center,
        actionsAlignment: MainAxisAlignment.center,
      ),
    );
  }
}

extension EmptyOrNullList on List? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}

extension DioExceptionTypeName on DioException {
  String get name => switch (type) {
    DioExceptionType.connectionTimeout => AppStrings.connectionTimeout,
    DioExceptionType.sendTimeout => AppStrings.requestSendTimeout,
    DioExceptionType.receiveTimeout => AppStrings.responseReceiveTimeout,
    DioExceptionType.badResponse => AppStrings.error,
    DioExceptionType.unknown => AppStrings.unknownError,
    DioExceptionType.cancel => AppStrings.requestCancelled,
    DioExceptionType.connectionError => AppStrings.connectionTimeout,
    DioExceptionType.badCertificate => AppStrings.badCertificationError,
  };
}

extension Capitalize on String {
  String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
}
