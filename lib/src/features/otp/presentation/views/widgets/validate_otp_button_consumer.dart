part of '../../../otp.dart';

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
            params: ResetPassViewParams(
              email: ref.watch(emailProvider).text.trim(),
              otp: ref.watch(otpProvider).text.trim(),
            ),
          ),
        ),
      ),
    );
  }
}
