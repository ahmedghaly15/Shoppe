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
