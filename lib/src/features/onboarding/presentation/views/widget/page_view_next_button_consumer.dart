import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

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
          ? () {
              // TODO: navigate To home and cache onboarding
            }
          : () => ref.read(currentIndexProvider.notifier).moveNext(),
      text: isLastPage ? AppStrings.letsGetStarted : AppStrings.next,
    );
  }
}
