import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/src/core/helpers/extensions.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/adaptive_circular_progress_indicator.dart';
import '../../../../../core/widgets/primary_button.dart';
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
        data: (response) {
          // TODO: handle loginProvider listener
          context.router.pushAndPopUntil(
            const OnboardingRoute(),
            predicate: (route) => false,
          );
        },
        error: (error, _) => context.showToast(error.toString()),
        loading: () => context.unfocusKeyboard(),
      ),
    );
  }
}
