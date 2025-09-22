import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../../config/cache/cache_helper.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../providers/onboarding_providers.dart';

class PageViewNextButtonConsumer extends ConsumerWidget {
  const PageViewNextButtonConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLastPage = ref.watch(isLastPageProvider);
    return PrimaryButton(
      onPressed: isLastPage
          ? () => _pushHome(ref, context)
          : () => ref.read(currentIndexProvider.notifier).moveNext(),
      text: isLastPage ? AppStrings.letsGetStarted : AppStrings.next,
    );
  }

  void _pushHome(WidgetRef ref, BuildContext context) async {
    final cacheHelper = ref.read(cacheHelperProvider);
    final email = context.router.routeData
        .argsAs<OnboardingRoute>()
        .args!
        .email;
    await cacheHelper.setOnboardingDone(email);
    context.replaceRoute(const HomeRoute());
  }
}
