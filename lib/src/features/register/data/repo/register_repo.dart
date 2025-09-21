import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/api/api_request_result.dart';
import '../../../../core/utils/functions/execute_and_handle_api_request.dart';
import '../api/register_api_service.dart';
import '../models/register_request_body.dart';

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
