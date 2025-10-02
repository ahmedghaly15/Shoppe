part of '../../login.dart';

final loginRepoProvider = Provider.autoDispose<LoginRepo>((ref) {
  final apiService = ref.read(loginApiServiceProvider);
  return LoginRepoImpl(apiService);
});

abstract class LoginRepo {
  Future<ApiRequestResult<LoginRequestResponse>> login(
    LoginRequestBody requestBody,
  );
}

class LoginRepoImpl extends LoginRepo {
  final LoginApiService _apiService;

  LoginRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<LoginRequestResponse>> login(
    LoginRequestBody requestBody,
  ) {
    return executeAndHandleApiRequest<LoginRequestResponse>(
      () async => await _apiService.login(requestBody),
    );
  }
}
