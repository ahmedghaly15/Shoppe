part of '../../../onboarding.dart';

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
        return _buildPageItemCard(pageView);
      },
      onPageChanged: (index) =>
          ref.read(currentIndexProvider.notifier).onPageChanged(index),
    );
  }

  Card _buildPageItemCard(PageViewAttributes pageView) {
    return Card(
      elevation: 4.h,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(bottom: 44.h),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
                child: Image.asset(
                  pageView.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 12.h,
                top: 46.h,
                left: 24.w,
                right: 24.w,
              ),
              child: Text(pageView.title, style: AppTextStyles.font21Bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text(
                pageView.subtitle,
                style: AppTextStyles.font12Regular,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.h, left: 62.w, right: 62.w),
              child: const PageViewNextButtonConsumer(),
            ),
          ],
        ),
      ),
    );
  }
}
