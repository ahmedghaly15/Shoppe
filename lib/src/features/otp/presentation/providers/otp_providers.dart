import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api/api_request_result.dart';
import '../../../../core/models/email_request_body.dart';
import '../../data/models/otp_request_body.dart';
import '../../data/repo/otp_repo.dart';

part 'otp_providers.g.dart';

final otpProvider = Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController(),
);

@riverpod
class VerifyEmail extends _$VerifyEmail {
  @override
  AsyncValue<bool> build() => const AsyncValue.data(false);

  void verify(String email) async {
    state = const AsyncValue.loading();
    final requestBody = OtpRequestBody(
      email: email,
      otp: ref.watch(otpProvider).text.trim(),
    );
    final result = await ref.read(otpRepoProvider).verifyEmail(requestBody);
    result.when(
      success: (_) => state = const AsyncValue.data(true),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs(), StackTrace.current),
    );
  }
}

@riverpod
class ResendOtp extends _$ResendOtp {
  @override
  AsyncValue<bool> build() => const AsyncValue.data(false);

  void resend(String email) async {
    state = const AsyncValue.loading();
    final body = EmailRequestBody(email: email);
    final result = await ref.read(otpRepoProvider).resendOtp(body);
    result.when(
      success: (_) => state = const AsyncValue.data(true),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs(), StackTrace.current),
    );
  }
}
