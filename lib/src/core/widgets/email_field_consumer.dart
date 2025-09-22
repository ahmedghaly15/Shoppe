part of 'core_widgets.dart';

class EmailFieldConsumer extends ConsumerWidget {
  const EmailFieldConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = ref.watch(emailProvider);
    final autovalidateMode = ref.watch(autovalidateModeProvider);
    return CustomInputFormField(
      controller: emailController,
      autovalidateMode: autovalidateMode,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      placeholderText: AppStrings.email,
      validator: (value) => InputFieldValidator.validateEmailField(value),
    );
  }
}
