part of 'core_widgets.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({
    super.key,
    required this.isActive,
    this.height = 20,
    this.width = 20,
    this.inactiveWidth,
    this.shape = BoxShape.circle,
    this.borderRadius,
    this.animationDuration = const Duration(milliseconds: 300),
  });

  final bool isActive;
  final double? height, width, inactiveWidth;
  final BoxShape shape;
  final BorderRadiusGeometry? borderRadius;
  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: animationDuration,
      width: (isActive ? width : inactiveWidth ?? width)?.h,
      height: height?.h,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : AppColors.colorC7D6FB,
        borderRadius: shape == BoxShape.circle ? null : borderRadius,
        shape: shape,
      ),
    );
  }
}
