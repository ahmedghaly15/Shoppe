part of 'core_widgets.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.shape = BoxShape.rectangle,
  });

  final Widget child;
  final double? height, width;
  final BoxShape shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.h,
      width: shape == BoxShape.circle ? width?.h : width?.w,
      padding: EdgeInsets.all(5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: Consts.itemRadius,
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
