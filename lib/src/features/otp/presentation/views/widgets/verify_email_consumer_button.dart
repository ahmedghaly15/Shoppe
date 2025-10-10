part of '../../../otp.dart';

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
        error: (error, _) {
          final apiErrorModel = error as ApiErrorModel;
          context.showDialog(
            state: AdaptiveDialogState.error,
            titleText: apiErrorModel.errorTypeName,
            contentText: apiErrorModel.getAllErrorMsgs(),
          );
        },
      ),
    );
  }
}
