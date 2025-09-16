import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/src/core/helpers/extensions.dart';

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
      onPressed: () =>
          ref.read(registerProvider.notifier).validateFormAndRegister(),
      text: AppStrings.done,
      child: asyncRegister.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }

  void _registerProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen<AsyncValue<bool>>(
      registerProvider,
      (_, current) => current.whenOrNull(
        data: (registered) {
          if (registered) {
            context.showToast(message: AppStrings.userCreatedSuccessfully);
          }
        },
        error: (error, _) => context.showToast(message: error.toString()),
      ),
    );
  }
}
