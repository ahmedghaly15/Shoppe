import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets.dart';
import '../../data/models/page_view_attributes.dart';

final pageViewItemsProvider = Provider.autoDispose<List<PageViewAttributes>>(
  (ref) => const [
    PageViewAttributes(
      title: AppStrings.onboardingTitle1,
      subtitle: AppStrings.onboardingSubtitle1,
      imagePath: Assets.imagesShopSmartPageView,
    ),
    PageViewAttributes(
      title: AppStrings.onboardingTitle2,
      subtitle: AppStrings.onboardingSubtitle2,
      imagePath: Assets.imagesOffersPageView,
    ),
    PageViewAttributes(
      title: AppStrings.onboardingTitle3,
      subtitle: AppStrings.onboardingSubtitle3,
      imagePath: Assets.imagesProductsPageView,
    ),
    PageViewAttributes(
      title: AppStrings.onboardingTitle4,
      subtitle: AppStrings.onboardingSubtitle4,
      imagePath: Assets.imagesEasyCartPageView,
    ),
  ],
);

final pageViewControllerProvider = Provider.autoDispose<PageController>((ref) {
  return PageController();
});

class _CurrentIndexNotifier extends Notifier<int> {
  @override
  int build() => 0;

  final Duration _animationDuration = const Duration(seconds: 1);
  final Curve _animationCurve = Curves.fastEaseInToSlowEaseOut;

  void moveNext() async {
    final pageController = ref.watch(pageViewControllerProvider);
    state++;
    await pageController.nextPage(
      duration: _animationDuration,
      curve: _animationCurve,
    );
  }

  void onPageChanged(int index) {
    state = index;
  }
}

final currentIndexProvider =
    NotifierProvider.autoDispose<_CurrentIndexNotifier, int>(
      _CurrentIndexNotifier.new,
    );

final isLastPageProvider = Provider.autoDispose<bool>((ref) {
  final currentPage = ref.watch(currentIndexProvider);
  final lastPage = ref.watch(pageViewItemsProvider).length - 1;
  return currentPage == lastPage;
});

final isActivePageProvider = Provider.autoDispose.family<bool, int>((
  ref,
  index,
) {
  final currentPage = ref.watch(currentIndexProvider);
  return currentPage == index;
});
