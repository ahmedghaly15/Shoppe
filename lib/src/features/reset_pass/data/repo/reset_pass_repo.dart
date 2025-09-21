import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

import '../../../../core/api/api_request_result.dart';
import '../../../../core/utils/functions/execute_and_handle_api_request.dart';
import '../api/reset_pass_api_service.dart';
import '../models/reset_pass_request_body.dart';

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
