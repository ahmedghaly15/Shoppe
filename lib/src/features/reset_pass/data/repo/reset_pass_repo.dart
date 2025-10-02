part of '../../reset_pass.dart';

final resetPassRepoProvider = Provider.autoDispose<ResetPassRepo>((ref) {
  final apiService = ref.read(resetPassApiServiceProvider);
  return ResetPassRepoImpl(apiService);
});

abstract class ResetPassRepo {
  Future<ApiRequestResult<void>> resetPassword(ResetPassRequestBody body);
}

class ResetPassRepoImpl extends ResetPassRepo {
  final ResetPassApiService _apiService;

  ResetPassRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<void>> resetPassword(ResetPassRequestBody body) {
    return executeAndHandleApiRequest(
      () async => await _apiService.resetPassword(body),
    );
  }
}
