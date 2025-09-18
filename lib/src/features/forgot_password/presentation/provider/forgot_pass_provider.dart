import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/api/api_request_result.dart';

import '../../../../core/providers/form_providers.dart';
import '../../data/models/forgot_pass_request_body.dart';
import '../../data/repo/forgot_pass_repo.dart';

part 'forgot_pass_provider.g.dart';

@riverpod
class ForgotPassword extends _$ForgotPassword {
  @override
  AsyncValue<bool> build() => const AsyncValue.data(false);

  void _forgotPass() async {
    state = const AsyncValue.loading();
    final requestBody = ForgotPassRequestBody(
      email: ref.watch(emailProvider).text.trim(),
    );
    final result = await ref
        .read(forgotPassRepoProvider)
        .forgotPass(requestBody);
    result.when(
      success: (_) => state = const AsyncValue.data(true),
      failure: (error) => state = AsyncValue.error(error, StackTrace.current),
    );
  }

  void validateAndForgotPass() {
    final formKey = ref.watch(formKeyProvider);
    if (formKey.currentState!.validate()) {
      _forgotPass();
    } else {
      ref.read(autovalidateModeProvider.notifier).enable();
    }
  }
}
