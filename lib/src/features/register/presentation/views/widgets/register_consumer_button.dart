import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/src/core/helpers/extensions.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../core/providers/form_providers.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/adaptive_circular_progress_indicator.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../providers/register_provider.dart';

class RegisterConsumerButton extends ConsumerWidget {
  const RegisterConsumerButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncRegister = ref.watch(registerProvider);
    _registerProviderListener(ref, context);
    return PrimaryButton(
      onPressed: asyncRegister.isLoading
          ? null
          : () => ref.read(registerProvider.notifier).validateFormAndRegister(),
      text: AppStrings.done,
      child: asyncRegister.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }

  void _registerProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen<AsyncValue<bool>>(
      registerProvider,
      (_, current) => current.when(
        loading: () => context.unfocusKeyboard(),
        data: (registered) async {
          if (registered) {
            await _showToastAndPushOtpView(context, ref);
          }
        },
        error: (error, _) => context.showToast(error.toString()),
      ),
    );
  }

  Future<void> _showToastAndPushOtpView(
    BuildContext context,
    WidgetRef ref,
  ) async {
    context.showToast(AppStrings.userCreatedSuccessfully);
    await Future.delayed(const Duration(milliseconds: 3500));
    context.replaceRoute(OtpRoute(email: ref.watch(emailProvider).text.trim()));
  }
}
