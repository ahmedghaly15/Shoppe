part of '../../../onboarding.dart';

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
    final secureStorageHelper = ref.read(secureStorageHelperProvider);
    final email = await secureStorageHelper.getSecuredString(
      CacheKeys.loggedInUserEmail,
    );
    await secureStorageHelper.setOnboardingDone(email!);
    context.replaceRoute(const LayoutRoute());
  }
}
