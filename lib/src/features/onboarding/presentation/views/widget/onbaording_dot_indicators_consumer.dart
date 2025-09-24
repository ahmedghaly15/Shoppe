part of '../../../onboarding.dart';

class OnboardingDotIndicatorsConsumer extends ConsumerWidget {
  const OnboardingDotIndicatorsConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageViews = ref.read(pageViewItemsProvider);
    final currentIndex = ref.watch(currentIndexProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8.w,
      children: List.generate(
        pageViews.length,
        (index) =>
            CustomDotIndicator(isActive: index == currentIndex),
        growable: false,
      ),
    );
  }
}
