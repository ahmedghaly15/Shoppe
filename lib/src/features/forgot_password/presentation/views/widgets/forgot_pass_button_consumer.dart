part of '../../../forgot_password.dart';

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
        data: (emailSent) async {
          if (emailSent) {
            context.showToast(AppStrings.otpValidationDesc);
            await Future.delayed(const Duration(milliseconds: 3500));
            await context.showDialog(
              titleText: AppStrings.otpValidation,
              content: const OtpPinput(),
              actions: [
                const ValidateOtpButtonConsumer(),
                const DidntReceiveOtp(),
              ],
            );
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
        loading: () => context.unfocusKeyboard(),
      ),
    );
  }
}
