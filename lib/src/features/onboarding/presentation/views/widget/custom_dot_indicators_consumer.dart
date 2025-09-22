part of '../../../onboarding.dart';

class CustomDotIndicatorsConsumer extends ConsumerWidget {
  const CustomDotIndicatorsConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageViews = ref.read(pageViewItemsProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8.w,
      children: List.generate(
        pageViews.length,
        (index) => _CustomDotIndicatorConsumer(index: index),
        growable: false,
      ),
    );
  }
}

class _CustomDotIndicatorConsumer extends ConsumerWidget {
  const _CustomDotIndicatorConsumer({required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isActive = ref.watch(isActivePageProvider(index));
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 20.h,
      height: 20.h,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : AppColors.colorC7D6FB,
        shape: BoxShape.circle,
      ),
    );
  }
}
