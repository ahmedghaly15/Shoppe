import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

import '../../../../core/api/api_request_result.dart';
import '../../../../core/models/email_request_body.dart';
import '../../../../core/utils/functions/execute_and_handle_errors.dart';
import '../api/otp_api_service.dart';
import '../models/otp_request_body.dart';

final otpRepoProvider = Provider.autoDispose<OtpRepo>((ref) {
  final apiService = ref.read(otpApiServiceProvider);
  return OtpRepo(apiService);
});

class OtpRepo {
  final OtpApiService _apiService;

  OtpRepo(this._apiService);

  Future<ApiRequestResult<void>> verifyEmail(OtpRequestBody requestBody) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.verifyEmail(requestBody),
    );
  }

  Future<ApiRequestResult<void>> resendOtp(EmailRequestBody body) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.resendOtp(body),
    );
  }

  Future<ApiRequestResult<void>> validateOtp(OtpRequestBody body) {
    return executeAndHandleErrors(
      () async => await _apiService.validateOtp(body),
    );
  }
}
