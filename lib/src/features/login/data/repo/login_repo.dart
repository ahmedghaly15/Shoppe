part of '../../login.dart';

final loginRepoProvider = Provider.autoDispose<LoginRepo>((ref) {
  final apiService = ref.read(loginApiServiceProvider);
  return LoginRepo(apiService);
});

class LoginRepo {
  final LoginApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiRequestResult<LoginRequestResponse>> login(
    LoginRequestBody requestBody,
  ) {
    return executeAndHandleApiRequest<LoginRequestResponse>(
      () async => await _apiService.login(requestBody),
    );
  }
}
