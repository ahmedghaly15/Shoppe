part of '../../start.dart';

@RoutePage()
class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            const CircleShadowAppLogo(),
            Container(
              margin: EdgeInsets.only(top: 24.h, bottom: 18.h),
              child: Text(
                ConstStrings.appName,
                style: AppTextStyles.font52Bold,
              ),
            ),
            Text(
              AppStrings.startViewWelcomeText,
              style: AppTextStyles.font19Regular,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            PrimaryButton(
              expands: true,
              onPressed: () => context.pushRoute(const RegisterRoute()),
              text: AppStrings.letsGetStarted,
            ),
            const AlreadyHaveAccTextButton(),
          ],
        ),
      ),
    );
  }
}
