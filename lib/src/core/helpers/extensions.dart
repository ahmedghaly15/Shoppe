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

extension EmptyOrNullList on List? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}
