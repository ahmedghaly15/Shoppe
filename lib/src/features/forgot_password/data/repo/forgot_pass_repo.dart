part of '../../forgot_password.dart';

final forgotPassRepoProvider = Provider.autoDispose<ForgotPassRepo>((ref) {
  final apiService = ref.watch(forgotPassApiServiceProvider);
  return ForgotPassRepo(apiService);
});

class ForgotPassRepo {
  final ForgotPassApiService _apiService;

  ForgotPassRepo(this._apiService);

  Future<ApiRequestResult<void>> forgotPass(EmailRequestBody requestBody) {
    return executeAndHandleApiRequest(
      () async => await _apiService.forgotPass(requestBody),
    );
  }
}
