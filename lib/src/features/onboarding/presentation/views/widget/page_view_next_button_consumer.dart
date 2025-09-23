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
    final cacheHelper = ref.read(cacheHelperProvider);
    final email = await cacheHelper.getString(CacheKeys.loggedInUserEmail);
    await cacheHelper.setOnboardingDone(email!);
    context.replaceRoute(const LayoutRoute());
  }
}
