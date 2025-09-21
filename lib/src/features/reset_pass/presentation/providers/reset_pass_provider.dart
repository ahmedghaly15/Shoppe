import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/providers/form_providers.dart';
import '../../../../core/api/api_request_result.dart';
import '../../data/models/reset_pass_view_params.dart';
import '../../data/models/reset_pass_request_body.dart';
import '../../data/repo/reset_pass_repo.dart';

part 'reset_pass_provider.g.dart';

@riverpod
class ResetPass extends _$ResetPass {
  @override
  AsyncValue<bool> build() => const AsyncValue.data(false);

  void resetPassword(ResetPassViewParams resetPassViewParams) async {
    state = const AsyncValue.loading();
    final requestBody = ResetPassRequestBody(
      email: resetPassViewParams.email,
      otp: resetPassViewParams.otp,
      newPassword: ref.watch(passwordProvider).text.trim(),
    );
    final result = await ref
        .read(resetPassRepoProvider)
        .resetPassword(requestBody);
    result.when(
      success: (_) => state = const AsyncValue.data(true),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs(), StackTrace.current),
    );
  }
}
