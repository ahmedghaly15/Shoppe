import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

import '../../../../core/api/api_request_result.dart';
import '../../../../core/utils/functions/execute_and_handle_errors.dart';
import '../api/verify_email_api_service.dart';
import '../models/verify_email_request_body.dart';

final verifyEmailRepoProvider = Provider.autoDispose<VerifyEmailRepo>((ref) {
  final apiService = ref.read(verifyEmailApiServiceProvider);
  return VerifyEmailRepo(apiService);
});

class VerifyEmailRepo {
  final VerifyEmailApiService _apiService;

  VerifyEmailRepo(this._apiService);

  Future<ApiRequestResult<void>> verifyEmail(
    VerifyEmailRequestBody requestBody,
  ) {
    return executeAndHandleErrors<void>(
      () async => await _apiService.verifyEmail(requestBody),
    );
  }
}
