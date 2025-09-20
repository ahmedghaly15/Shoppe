import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/src/core/helpers/extensions.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/adaptive_circular_progress_indicator.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../providers/forgot_pass_provider.dart';

class ForgotPassButtonConsumer extends ConsumerWidget {
  const ForgotPassButtonConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncForgotPass = ref.watch(forgotPasswordProvider);
    _forgotPassProviderListener(ref, context);
    return PrimaryButton(
      onPressed: asyncForgotPass.isLoading
          ? null
          : () => ref
                .read(forgotPasswordProvider.notifier)
                .validateAndSendEmail(),
      text: AppStrings.next,
      child: asyncForgotPass.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }

  void _forgotPassProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      forgotPasswordProvider,
      (_, current) => current.when(
        data: (emailSent) {},
        error: (error, _) => context.showToast(error.toString()),
        loading: () => context.unfocusKeyboard(),
      ),
    );
  }
}
