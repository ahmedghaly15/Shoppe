part of '../../../reset_pass.dart';

class ResetPassButtonConsumer extends ConsumerWidget {
  const ResetPassButtonConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncResetPass = ref.watch(resetPassProvider);
    final resetPassViewParams = context.router.routeData
        .argsAs<ResetPassRouteArgs>()
        .params;
    _resetPassProviderListener(ref, context);
    return PrimaryButton(
      onPressed: asyncResetPass.isLoading
          ? null
          : () => ref
                .read(resetPassProvider.notifier)
                .resetPassword(resetPassViewParams),
      text: AppStrings.save,
      child: asyncResetPass.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }

  void _resetPassProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      resetPassProvider,
      (_, current) => current.when(
        loading: () => context.unfocusKeyboard(),
        error: (error, _) {
          final apiErrorModel = error as ApiErrorModel;
          context.showDialog(
            state: AdaptiveDialogState.error,
            titleText: apiErrorModel.errorTypeName,
            contentText: apiErrorModel.getAllErrorMsgs,
          );
        },
        data: (success) async {
          if (success) {
            await _showToastAndPushLogin(context);
          }
        },
      ),
    );
  }

  Future<void> _showToastAndPushLogin(BuildContext context) async {
    context.showToast(AppStrings.passChangedSuccessfully);
    await Future.delayed(const Duration(milliseconds: 3500));
    context.router.pushAndPopUntil(
      const LoginRoute(),
      predicate: (route) => route.isFirst,
    );
  }
}
