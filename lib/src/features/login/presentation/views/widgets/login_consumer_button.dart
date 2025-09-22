part of '../../../login.dart';

class LoginConsumerButton extends ConsumerWidget {
  const LoginConsumerButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncLogin = ref.watch(loginProvider);
    _loginProviderListener(ref, context);
    return PrimaryButton(
      onPressed: asyncLogin.isLoading
          ? null
          : () => ref.read(loginProvider.notifier).validateAndLogin(),
      text: AppStrings.login,
      child: asyncLogin.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }

  void _loginProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      loginProvider,
      (_, current) => current.when(
        data: (response) async =>
            await _cacheResponseAndPushNext(ref, response, context),
        error: (error, _) => context.showToast(error.toString()),
        loading: () => context.unfocusKeyboard(),
      ),
    );
  }

  Future<void> _cacheResponseAndPushNext(
    WidgetRef ref,
    LoginRequestResponse response,
    BuildContext context,
  ) async {
    final cacheHelper = ref.read(cacheHelperProvider);
    await Future.wait([
      cacheHelper.setData(
        CacheKeys.loggedInUserEmail,
        ref.watch(emailProvider).text.trim(),
      ),
      cacheHelper.cacheLoginResponse(response),
    ]);
    if (isOnboardingVisitedForEmail) {
      context.router.pushAndPopUntil(
        const HomeRoute(),
        predicate: (route) => false,
      );
    } else {
      context.router.pushAndPopUntil(
        const OnboardingRoute(),
        predicate: (route) => false,
      );
    }
  }
}
