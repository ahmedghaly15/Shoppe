part of '../../../register.dart';

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

  Future<void> _showToastAndPushOtpView(
    BuildContext context,
    WidgetRef ref,
  ) async {
    context.showToast(AppStrings.userCreatedSuccessfully);
    await Future.delayed(const Duration(milliseconds: 3500));
    context.replaceRoute(OtpRoute(email: ref.watch(emailProvider).text.trim()));
  }
}
