part of 'core_widgets.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.radius,
    this.shape = BoxShape.rectangle,
    this.color = Colors.white,
  });

  final Widget child;
  final double? height, width, radius;
  final BoxShape shape;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: shape == BoxShape.circle ? radius?.h : height?.h,
      width: shape == BoxShape.circle ? radius?.h : width?.w,
      padding: EdgeInsets.all(5.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: shape == BoxShape.circle ? null : Consts.itemRadius,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5.h),
            blurRadius: 10.r,
            spreadRadius: 0,
            color: Colors.black.withAlpha(25),
          ),
        ],
        shape: shape,
      ),
      child: child,
    );
  }
}
