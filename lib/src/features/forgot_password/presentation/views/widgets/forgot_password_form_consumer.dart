part of '../../../forgot_password.dart';

class ForgotPasswordFormConsumer extends ConsumerWidget {
  const ForgotPasswordFormConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(forgotPassFormKeyProvider);
    return ShadForm(key: formKey, child: const EmailFieldConsumer());
  }
}
