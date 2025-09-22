part of '../../otp.dart';

final otpRepoProvider = Provider.autoDispose<OtpRepo>((ref) {
  final apiService = ref.read(otpApiServiceProvider);
  return OtpRepo(apiService);
});

class OtpRepo {
  final OtpApiService _apiService;

  OtpRepo(this._apiService);

  Future<ApiRequestResult<void>> verifyEmail(OtpRequestBody requestBody) {
    return executeAndHandleApiRequest<void>(
      () async => await _apiService.verifyEmail(requestBody),
    );
  }

  Future<ApiRequestResult<void>> resendOtp(EmailRequestBody body) {
    return executeAndHandleApiRequest<void>(
      () async => await _apiService.resendOtp(body),
    );
  }

  Future<ApiRequestResult<void>> validateOtp(OtpRequestBody body) {
    return executeAndHandleApiRequest(
      () async => await _apiService.validateOtp(body),
    );
  }
}
