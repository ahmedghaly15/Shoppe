import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/api/api_request_result.dart';

import '../../../../core/models/email_request_body.dart';
import '../../../../core/providers/form_providers.dart';
import '../../forgot_password.dart' show forgotPassRepoProvider;

part 'forgot_pass_provider.g.dart';

@riverpod
class ForgotPassword extends _$ForgotPassword {
  @override
  AsyncValue<bool> build() => const AsyncValue.data(false);

  void _forgotPass() async {
    state = const AsyncValue.loading();
    final requestBody = EmailRequestBody(
      email: ref.watch(emailProvider).text.trim(),
    );
    final result = await ref
        .read(forgotPassRepoProvider)
        .forgotPass(requestBody);
    result.when(
      success: (_) => state = const AsyncValue.data(true),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs(), StackTrace.current),
    );
  }

  void validateAndSendEmail() {
    final formKey = ref.watch(forgotPassFormKeyProvider);
    if (formKey.currentState!.validate()) {
      _forgotPass();
    } else {
      ref.read(autovalidateModeProvider.notifier).enable();
    }
  }
}
