part of '../../otp.dart';

final otpRepoProvider = Provider.autoDispose<OtpRepo>((ref) {
  final apiService = ref.read(otpApiServiceProvider);
  return OtpRepoImpl(apiService);
});

abstract class OtpRepo {
  Future<ApiRequestResult<void>> verifyEmail(OtpRequestBody requestBody);
  Future<ApiRequestResult<void>> resendOtp(EmailRequestBody body);
  Future<ApiRequestResult<void>> validateOtp(OtpRequestBody body);
}

class OtpRepoImpl extends OtpRepo {
  final OtpApiService _apiService;

  OtpRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<void>> verifyEmail(OtpRequestBody requestBody) {
    return executeAndHandleApiRequest<void>(
      () async => await _apiService.verifyEmail(requestBody),
    );
  }

  @override
  Future<ApiRequestResult<void>> resendOtp(EmailRequestBody body) {
    return executeAndHandleApiRequest<void>(
      () async => await _apiService.resendOtp(body),
    );
  }

  @override
  Future<ApiRequestResult<void>> validateOtp(OtpRequestBody body) {
    return executeAndHandleApiRequest(
      () async => await _apiService.validateOtp(body),
    );
  }
}
