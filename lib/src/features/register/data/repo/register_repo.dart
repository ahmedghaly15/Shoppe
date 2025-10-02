part of '../../register.dart';

final registerRepoProvider = Provider.autoDispose<RegisterRepo>((ref) {
  final apiService = ref.read(registerApiServiceProvider);
  return RegisterRepoImpl(apiService);
});

abstract class RegisterRepo {
  Future<ApiRequestResult<void>> register(RegisterRequestBody requestBody);
}

class RegisterRepoImpl extends RegisterRepo {
  final RegisterApiService _apiService;

  RegisterRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<void>> register(RegisterRequestBody requestBody) {
    return executeAndHandleApiRequest<void>(
      () async => await _apiService.register(requestBody),
    );
  }
}
