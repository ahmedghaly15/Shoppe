import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/src/core/helpers/extensions.dart';
import 'package:shoppe/src/features/reset_pass/data/models/reset_pass_view_args.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../core/providers/form_providers.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/adaptive_circular_progress_indicator.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../providers/otp_providers.dart';

class ValidateOtpButtonConsumer extends ConsumerWidget {
  const ValidateOtpButtonConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValidateOtp = ref.watch(validateOtpProvider);
    _validateOtpProviderListener(ref, context);
    return PrimaryButton(
      onPressed: asyncValidateOtp.isLoading
          ? null
          : () => ref.read(validateOtpProvider.notifier).validateOtp(),
      text: AppStrings.verify,
      child: asyncValidateOtp.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }

  void _validateOtpProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      validateOtpProvider,
      (_, current) => current.whenOrNull(
        error: (error, _) => context.showToast(error.toString()),
        data: (_) => context.router.popAndPush(
          ResetPassRoute(
            params: ResetPassViewArgs(
              email: ref.watch(emailProvider).text.trim(),
              otp: ref.watch(otpProvider).text.trim(),
            ),
          ),
        ),
      ),
    );
  }
}
