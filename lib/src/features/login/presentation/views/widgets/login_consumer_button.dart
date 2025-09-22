import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/src/core/helpers/extensions.dart';

import '../../../../../config/cache/cache_helper.dart';
import '../../../../../config/cache/cache_keys.dart';
import '../../../../../config/cache/extensions.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../core/providers/form_providers.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/functions/check_if_onboarding_visited_for_email.dart'
    show isOnboardingVisitedForEmail;
import '../../../../../core/widgets/adaptive_circular_progress_indicator.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../../data/models/login_request_response.dart';
import '../../provider/login_provider.dart';

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
