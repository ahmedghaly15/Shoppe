part of 'core_widgets.dart';

@RoutePage()
@RoutePage()
class ShadDialogView extends StatelessWidget {
  const ShadDialogView({
    super.key,
    required this.child,
    this.actions = const [],
    this.title,
    this.description,
    this.titleText,
    this.descriptionText,
  });

  final Widget? title, description;
  final String? titleText, descriptionText;
  final List<Widget> actions;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: size.width * 0.9,
          maxHeight: size.height * 0.7, //  set max height
        ),
        child: Material(
          borderRadius: BorderRadius.circular(32.r),
          clipBehavior: Clip.antiAlias, //  ensures corners are clipped
          child: ShadDialog(
            actionsMainAxisSize: MainAxisSize.min,
            useSafeArea: true,
            gap: 24.h,
            scrollPadding: EdgeInsets.symmetric(horizontal: 16.w),
            title: (title == null && titleText == null)
                ? null
                : (title ?? Text(titleText!, style: AppTextStyles.font15Bold)),
            description: (description == null && descriptionText == null)
                ? null
                : (description ??
                      Text(
                        descriptionText!,
                        style: AppTextStyles.font15Regular,
                      )),
            actions: actions,
            radius: BorderRadius.circular(32.r),
            child: child,
          ),
        ),
      ),
    );
  }
}
