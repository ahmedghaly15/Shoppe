import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../../../../config/theming/app_text_styles.dart';
import '../../providers/onboarding_providers.dart';
import 'page_view_next_button_consumer.dart';

class OnboardingPageViewConsumer extends ConsumerWidget {
  const OnboardingPageViewConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageViews = ref.watch(pageViewItemsProvider);
    final controller = ref.watch(pageViewControllerProvider);
    return PageView.builder(
      controller: controller,
      itemCount: pageViews.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) {
        final pageView = pageViews[index];
        return Container(
          padding: EdgeInsets.only(bottom: 16.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.r),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10.h),
                blurRadius: 37.r,
                spreadRadius: 0,
                color: Colors.black.withAlpha(41),
              ),
            ],
          ),
          child: Column(
            children: [
              Expanded(child: SvgPicture.asset(pageView.imagePath)),
              Container(
                margin: EdgeInsets.only(bottom: 12.h, top: 46.h),
                child: Text(pageView.title, style: AppTextStyles.font21Bold),
              ),
              Text(pageView.subtitle, style: AppTextStyles.font12Regular),
              Container(
                margin: EdgeInsets.only(top: 30.h),
                child: const PageViewNextButtonConsumer(),
              ),
            ],
          ),
        );
      },
      onPageChanged: (index) =>
          ref.read(currentIndexProvider.notifier).onPageChanged(index),
    );
  }
}
