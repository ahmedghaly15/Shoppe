part of '../../../otp.dart';

class ResendOtpTextButtonConsumer extends ConsumerWidget {
  const ResendOtpTextButtonConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _resendOtpProviderListener(ref, context);
    final email = context.routeData.argsAs<OtpRouteArgs>().email;
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: AppColors.primaryColor),
      onPressed: () => ref.read(resendOtpProvider.notifier).resend(email),
      child: const Text(AppStrings.resend),
    );
  }

  void _resendOtpProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      resendOtpProvider,
      (_, current) => current.whenOrNull(
        data: (resent) {
          if (resent) {
            context.showToast(AppStrings.otpResentSuccessfully);
          }
        },
        error: (error, _) {
          final apiErrorModel = error as ApiErrorModel;
          context.showDialog(
            state: AdaptiveDialogState.error,
            titleText: apiErrorModel.errorTypeName,
            contentText: apiErrorModel.getAllErrorMsgs,
          );
        },
      ),
    );
  }
}
