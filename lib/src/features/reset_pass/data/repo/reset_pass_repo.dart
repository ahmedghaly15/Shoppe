part of '../../reset_pass.dart';

final resetPassRepoProvider = Provider.autoDispose<ResetPassRepo>((ref) {
  final apiService = ref.read(resetPassApiServiceProvider);
  return ResetPassRepo(apiService);
});

class ResetPassRepo {
  final ResetPassApiService _apiService;

  ResetPassRepo(this._apiService);

  Future<ApiRequestResult<void>> resetPassword(ResetPassRequestBody body) {
    return executeAndHandleApiRequest(
      () async => await _apiService.resetPassword(body),
    );
  }
}
