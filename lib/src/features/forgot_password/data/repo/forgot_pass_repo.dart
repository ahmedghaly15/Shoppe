import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

import '../../../../core/api/api_request_result.dart';
import '../../../../core/models/email_request_body.dart';
import '../../../../core/utils/functions/execute_and_handle_api_request.dart';
import '../api/forgot_pass_api_service.dart';

final forgotPassRepoProvider = Provider.autoDispose<ForgotPassRepo>((ref) {
  final apiService = ref.watch(forgotPassApiServiceProvider);
  return ForgotPassRepo(apiService);
});

class ForgotPassRepo {
  final ForgotPassApiService _apiService;

  ForgotPassRepo(this._apiService);

  Future<ApiRequestResult<void>> forgotPass(EmailRequestBody requestBody) {
    return executeAndHandleApiRequest(
      () async => await _apiService.forgotPass(requestBody),
    );
  }
}
