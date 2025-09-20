import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/providers/form_providers.dart';
import '../../../../core/api/api_request_result.dart';
import '../../../otp/data/models/otp_request_body.dart';
import '../../../otp/presentation/providers/otp_providers.dart';
import '../../data/repo/forgot_pass_repo.dart';

part 'validate_otp_provider.g.dart';

@riverpod
class ValidateOtp extends _$ValidateOtp {
  @override
  AsyncValue<bool> build() => const AsyncValue.data(false);

  void validateOtp() async {
    state = const AsyncValue.loading();
    final requestBody = OtpRequestBody(
      email: ref.watch(emailProvider).text.trim(),
      otp: ref.watch(otpProvider).text.trim(),
    );
    final result = await ref
        .read(forgotPassRepoProvider)
        .validateOtp(requestBody);
    result.when(
      success: (_) => state = const AsyncValue.data(true),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs(), StackTrace.current),
    );
  }
}
