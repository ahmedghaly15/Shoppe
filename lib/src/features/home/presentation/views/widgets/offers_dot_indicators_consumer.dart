part of '../../../home.dart';

class OffersDotIndicatorsConsumer extends ConsumerWidget {
  const OffersDotIndicatorsConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final length = ref.watch(offersLengthProvider);
    final currentIndex = ref.watch(currentOfferIndexProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10.w,
      children: List.generate(
        length,
        (index) => CustomDotIndicator(
          isActive: index == currentIndex,
          height: 10,
          width: 40,
          inactiveWidth: 10,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(5.r)),
        ),
        growable: false,
      ),
    );
  }
}
