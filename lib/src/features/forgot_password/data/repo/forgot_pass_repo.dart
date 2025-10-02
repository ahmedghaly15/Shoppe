part of '../../forgot_password.dart';

final forgotPassRepoProvider = Provider.autoDispose<ForgotPassRepo>((ref) {
  final apiService = ref.watch(forgotPassApiServiceProvider);
  return ForgotPassRepoImpl(apiService);
});

abstract class ForgotPassRepo {
  Future<ApiRequestResult<void>> forgotPass(EmailRequestBody requestBody);
}

class ForgotPassRepoImpl extends ForgotPassRepo {
  final ForgotPassApiService _apiService;

  ForgotPassRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<void>> forgotPass(EmailRequestBody requestBody) {
    return executeAndHandleApiRequest(
      () async => await _apiService.forgotPass(requestBody),
    );
  }
}
