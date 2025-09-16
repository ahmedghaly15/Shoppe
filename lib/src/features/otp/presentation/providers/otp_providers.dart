import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api/api_request_result.dart';
import '../../data/models/verify_email_request_body.dart';
import '../../data/repo/verify_email_repo.dart';

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
    final requestBody = VerifyEmailRequestBody(
      email: email,
      otp: ref.watch(otpProvider).text.trim(),
    );
    final result = await ref
        .read(verifyEmailRepoProvider)
        .verifyEmail(requestBody);
    result.when(
      success: (_) => state = const AsyncValue.data(true),
      failure: (error) =>
          state = AsyncValue.error(error.toString(), StackTrace.current),
    );
  }
}
