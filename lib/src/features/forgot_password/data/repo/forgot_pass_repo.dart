import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

import '../../../../core/api/api_request_result.dart';
import '../../../../core/utils/functions/execute_and_handle_errors.dart';
import '../api/forgot_pass_api_service.dart';
import '../models/forgot_pass_request_body.dart';

final forgotPassRepoProvider = Provider.autoDispose<ForgotPassRepo>((ref) {
  final apiService = ref.watch(forgotPassApiServiceProvider);
  return ForgotPassRepo(apiService);
});

class ForgotPassRepo {
  final ForgotPassApiService _apiService;

  ForgotPassRepo(this._apiService);

  Future<ApiRequestResult<void>> forgotPass(ForgotPassRequestBody requestBody) {
    return executeAndHandleErrors(
      () async => await _apiService.forgotPass(requestBody),
    );
  }
}
