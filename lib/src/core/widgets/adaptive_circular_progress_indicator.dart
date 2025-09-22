part of 'core_widgets.dart';

class AdaptiveCircularProgressIndicator extends StatelessWidget {
  const AdaptiveCircularProgressIndicator({
    super.key,
    this.color = Colors.white,
    this.strokeWidth = 1.5,
    this.backgroundColor,
    this.dimension = 24,
  });

  final Color color;
  final Color? backgroundColor;
  final double strokeWidth, dimension;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox.square(
        dimension: dimension.h,
        child: CircularProgressIndicator.adaptive(
          valueColor: AlwaysStoppedAnimation<Color>(color),
          strokeCap: StrokeCap.butt,
          strokeWidth: strokeWidth.w,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
