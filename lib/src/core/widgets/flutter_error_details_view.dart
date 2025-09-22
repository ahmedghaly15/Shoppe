part of 'core_widgets.dart';

class FlutterErrorDetailsView extends StatelessWidget {
  const FlutterErrorDetailsView({super.key, required this.details});

  final FlutterErrorDetails details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          spacing: 16.h,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Flexible(child: Icon(LucideIcons.circleAlert)),
            Text(
              ApiErrorMessage.defaultError,
              style: context.shadTextTheme.h4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
