import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/api/api_request_result.dart';

import '../../../../core/providers/form_providers.dart';
import '../../data/models/login_request_body.dart';
import '../../data/models/login_request_response.dart';
import '../../data/repo/login_repo.dart';

part 'login_provider.g.dart';

@riverpod
class Login extends _$Login {
  @override
  AsyncValue<LoginRequestResponse> build() =>
      AsyncValue.data(LoginRequestResponse.empty());

  void _login() async {
    state = const AsyncValue.loading();
    final requestBody = LoginRequestBody(
      email: ref.watch(emailProvider).text.trim(),
      password: ref.watch(passwordProvider).text.trim(),
    );
    final result = await ref.read(loginRepoProvider).login(requestBody);
    result.when(
      success: (response) => state = AsyncValue.data(response),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs(), StackTrace.current),
    );
  }

  void validateAndLogin() {
    if (ref.watch(formKeyProvider).currentState!.validate()) {
      _login();
    } else {
      ref.read(autovalidateModeProvider.notifier).enable();
    }
  }
}
