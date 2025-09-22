part of '../../onboarding.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          PositionedDirectional(
            start: 0,
            top: 0,
            child: SvgPicture.asset(Assets.svgsOnboardingBlueBubble),
          ),
          PositionedDirectional(
            end: 0,
            bottom: 16.h,
            child: SvgPicture.asset(Assets.svgsOnboardingGreyBubble),
          ),
          PositionedDirectional(
            bottom: 40.h,
            end: 0,
            start: 0,
            child: const SafeArea(child: CustomDotIndicatorsConsumer()),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: size.height * 0.1,
              horizontal: 24.w,
            ),
            child: const OnboardingPageViewConsumer(),
          ),
        ],
      ),
    );
  }
}
