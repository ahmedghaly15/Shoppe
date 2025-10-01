part of 'core_widgets.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    this.titleText,
    this.actions,
    this.titleWidget,
    this.leading,
    this.hasLeading = true,
    this.backgroundColor,
    this.centerTitle = true,
  });

  final String? titleText;
  final List<Widget>? actions;
  final Widget? titleWidget;
  final Widget? leading;
  final bool hasLeading;
  final Color? backgroundColor;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      title: (titleWidget == null && titleText == null)
          ? null
          : titleWidget ?? Text(titleText!, style: AppTextStyles.font28Bold),
      leading: hasLeading ? leading ?? const ArrowBackIconButton() : null,
      actions: actions,
    );
  }
}

class ArrowBackIconButton extends StatelessWidget {
  const ArrowBackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.pop(),
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }
}
