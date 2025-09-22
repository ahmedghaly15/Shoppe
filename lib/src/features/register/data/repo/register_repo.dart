part of '../../register.dart';

final registerRepoProvider = Provider.autoDispose<RegisterRepo>((ref) {
  final apiService = ref.read(registerApiServiceProvider);
  return RegisterRepo(apiService);
});

class RegisterRepo {
  final RegisterApiService _apiService;

  RegisterRepo(this._apiService);

  Future<ApiRequestResult<void>> register(RegisterRequestBody requestBody) {
    return executeAndHandleApiRequest<void>(
      () async => await _apiService.register(requestBody),
    );
  }
}
