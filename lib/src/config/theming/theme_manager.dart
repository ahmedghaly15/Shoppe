part of 'theming.dart';

class ThemeManager {
  ThemeManager._();

  static ShadThemeData get lightMode => ShadThemeData(
    colorScheme: const ShadSlateColorScheme.light(
      background: Colors.white,
      primary: AppColors.primaryColor,
      foreground: Colors.black, // ensures general text is dark
      primaryForeground: Colors.white, // ensures primary button text dark
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
    inputTheme: ShadInputTheme(
      inputPadding: _inputPadding,
      style: _textFieldTextStyle,
      placeholderStyle: _textFieldTextStyle.copyWith(
        color: AppColors.colorA4A4A4,
      ),
      decoration: ShadDecoration(
        color: AppColors.colorF8F8F8,
        errorStyle: TextStyle(fontSize: 13.sp, color: Colors.red),
        focusedBorder: _textFieldUnderlineInputBorder(
          borderColor: AppColors.primaryColor,
          width: 2,
        ),
        errorBorder: _textFieldUnderlineInputBorder(
          borderColor: Colors.red,
          width: 1.3,
        ),
        border: _textFieldUnderlineInputBorder(),
        disableSecondaryBorder: true,
      ),
    ),
  );

  static ThemeData materialTheme(BuildContext context) =>
      Theme.of(context).copyWith(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.black),
        ),
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      );

  static EdgeInsets get _inputPadding =>
      EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h);

  static TextStyle get _textFieldTextStyle => AppTextStyles.font12Regular;

  static ShadBorder _textFieldUnderlineInputBorder({
    Color? borderColor,
    double width = 1,
  }) {
    return ShadBorder(
      radius: BorderRadius.circular(60.r),
      top: _inputBorderSide(borderColor, width),
      bottom: _inputBorderSide(borderColor, width),
      left: _inputBorderSide(borderColor, width),
      right: _inputBorderSide(borderColor, width),
    );
  }

  static ShadBorderSide _inputBorderSide(Color? borderColor, double width) {
    return ShadBorderSide(
      color: borderColor ?? AppColors.colorF8F8F8,
      width: width.w,
    );
  }
}
