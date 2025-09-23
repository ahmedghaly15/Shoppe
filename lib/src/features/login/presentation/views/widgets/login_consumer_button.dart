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
    await _cacheResponse(ref, response);
    _pushNextRoute(context);
  }

  void _pushNextRoute(BuildContext context) {
    if (isOnboardingVisitedForEmail) {
      context.router.pushAndPopUntil(
        const LayoutRoute(),
        predicate: (route) => false,
      );
    } else {
      context.router.pushAndPopUntil(
        const OnboardingRoute(),
        predicate: (route) => false,
      );
    }
  }

  Future<void> _cacheResponse(
    WidgetRef ref,
    LoginRequestResponse response,
  ) async {
    final cacheHelper = ref.read(cacheHelperProvider);
    await Future.wait([
      cacheHelper.setData(
        CacheKeys.loggedInUserEmail,
        ref.watch(emailProvider).text.trim(),
      ),
      cacheHelper.cacheLoginResponse(response),
    ]);
  }
}
