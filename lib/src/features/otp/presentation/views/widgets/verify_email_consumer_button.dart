import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/src/core/helpers/extensions.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/adaptive_circular_progress_indicator.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../providers/otp_providers.dart';

class VerifyEmailConsumerButton extends ConsumerWidget {
  const VerifyEmailConsumerButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncVerify = ref.watch(verifyEmailProvider);
    final route = context.routeData;
    final email = route.argsAs<OtpRouteArgs>().email;
    _verifyEmailProviderListener(ref, context);
    return PrimaryButton(
      onPressed: asyncVerify.isLoading
          ? null
          : () => ref.read(verifyEmailProvider.notifier).verify(email),
      text: AppStrings.verify,
      child: asyncVerify.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }

  void _verifyEmailProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen<AsyncValue<bool>>(
      verifyEmailProvider,
      (_, current) => current.whenOrNull(
        data: (verified) {
          if (verified) {
            context.showToast(AppStrings.accountVerifiedSuccessfully);
          }
        },
        error: (error, _) => context.showToast(error.toString()),
      ),
    );
  }
}
