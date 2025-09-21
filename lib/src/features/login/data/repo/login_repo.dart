import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

import '../../../../core/api/api_request_result.dart';
import '../../../../core/utils/functions/execute_and_handle_api_request.dart';
import '../api/login_api_service.dart';
import '../models/login_request_body.dart';
import '../models/login_request_response.dart';

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
