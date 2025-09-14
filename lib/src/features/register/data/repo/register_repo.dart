import '../../../../core/api/api_request_result.dart';
import '../../../../core/utils/functions/execute_and_handle_errors.dart';
import '../api/register_api_service.dart';
import '../models/register_request_body.dart';

class RegisterRepo {
  final RegisterApiService _apiService;

  RegisterRepo(this._apiService);

  Future<ApiRequestResult<void>> register(RegisterRequestBody requestBody) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.register(requestBody),
    );
  }
}
