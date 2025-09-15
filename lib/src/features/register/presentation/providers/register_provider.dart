import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/api/api_request_result.dart';

import '../../../../core/providers/form_providers.dart';
import '../../data/models/register_request_body.dart';
import '../../data/repo/register_repo.dart';

part 'register_provider.g.dart';

@riverpod
class Register extends _$Register {
  @override
  AsyncValue<void> build() => const AsyncValue.data(null);

  void _register() async {
    state = const AsyncValue.loading();
    final name = ref.watch(nameProvider).text.trim();
    final firstName = name.split(' ').first;
    final lastName = name.split(' ').last;
    final requestBody = RegisterRequestBody(
      email: ref.watch(emailProvider).text.trim(),
      password: ref.watch(passwordProvider).text.trim(),
      firstName: firstName,
      lastName: lastName,
    );
    final result = await ref.read(registerRepoProvider).register(requestBody);
    result.when(
      success: (_) => state = const AsyncValue.data(null),
      failure: (error) =>
          state = AsyncValue.error(error.toString(), StackTrace.current),
    );
  }

  void validateFormAndRegister() {
    if (ref.watch(formKeyProvider).currentState!.validate()) {
      _register();
    } else {
      ref.read(autovalidateModeProvider.notifier).enable();
    }
  }
}
