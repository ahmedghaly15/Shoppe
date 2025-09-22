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
            context.showDialog(
              const _ValidateOtpDialogContent(),
              titleText: AppStrings.otpValidation,
              descriptionText: AppStrings.resetPassOtpSent,
            );
          }
        },
        error: (error, _) => context.showToast(error.toString()),
        loading: () => context.unfocusKeyboard(),
      ),
    );
  }
}

class _ValidateOtpDialogContent extends StatelessWidget {
  const _ValidateOtpDialogContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16.h,
      children: const [
        OtpPinput(),
        ValidateOtpButtonConsumer(),
        DidntReceiveOtp(),
      ],
    );
  }
}
