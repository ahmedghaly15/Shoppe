import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theming/app_colors.dart';
import '../../providers/onboarding_providers.dart';

class CustomDotIndicatorsConsumer extends ConsumerWidget {
  const CustomDotIndicatorsConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentIndexProvider);
    final pageViews = ref.read(pageViewItemsProvider);
    return Row(
      spacing: 8.w,
      children: List.generate(
        pageViews.length,
        (index) => _CustomDotIndicator(isActive: currentIndex == index),
        growable: false,
      ),
    );
  }
}

class _CustomDotIndicator extends StatelessWidget {
  const _CustomDotIndicator({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32.w : 8.w,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : const Color(0xffE7E7E7),
        borderRadius: BorderRadius.circular(12.r),
      ),
    );
  }
}
