part of 'core_widgets.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      ),
      child: child,
    );
  }
}
