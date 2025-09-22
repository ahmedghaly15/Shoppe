part of '../../../register.dart';

class RegisterForm extends ConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(formKeyProvider);
    return ShadForm(
      key: formKey,
      child: Column(
        spacing: 8.h,
        children: const [
          NameFieldConsumer(),
          EmailFieldConsumer(),
          PassFieldConsumer(),
        ],
      ),
    );
  }
}
