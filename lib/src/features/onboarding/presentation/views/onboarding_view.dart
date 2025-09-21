import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../../../core/utils/assets.dart';
import 'widget/custom_dot_indicators_consumer.dart';
import 'widget/onboarding_page_view_consumer.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
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
            bottom: 20.h,
            start: 0,
            end: 0,
            child: const SafeArea(child: CustomDotIndicatorsConsumer()),
          ),
          const OnboardingPageViewConsumer(),
        ],
      ),
    );
  }
}
