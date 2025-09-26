part of 'core_widgets.dart';

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
    this.backgroundColor,
  });

  final String? text;
  final Widget? child, leading;
  final VoidCallback? onPressed;
  final bool? expands;
  final ShadButtonSize? size;
  final ShadDecoration? decoration;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ShadButton(
      size: size,
      backgroundColor: backgroundColor,
      pressedBackgroundColor: backgroundColor?.withAlpha(102),
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
