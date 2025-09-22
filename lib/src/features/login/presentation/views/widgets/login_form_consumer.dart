part of '../../../login.dart';

class LoginFormConsumer extends ConsumerWidget {
  const LoginFormConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(formKeyProvider);
    return ShadForm(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.h,
        children: const [EmailFieldConsumer(), PassFieldConsumer()],
      ),
    );
  }
}
