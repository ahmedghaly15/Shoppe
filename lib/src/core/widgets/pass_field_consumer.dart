part of 'core_widgets.dart';

class PassFieldConsumer extends ConsumerWidget {
  const PassFieldConsumer({
    super.key,
    this.placeholderText = AppStrings.password,
  });

  final String placeholderText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passController = ref.watch(passwordProvider);
    final autovalidateMode = ref.watch(autovalidateModeProvider);
    final isObscure = ref.watch(passwordObscureProvider);
    return CustomInputFormField(
      controller: passController,
      autovalidateMode: autovalidateMode,
      keyboardType: TextInputType.visiblePassword,
      autofillHints: const [AutofillHints.password],
      placeholderText: placeholderText,
      obscureText: isObscure,
      trailing: IconButton(
        onPressed: () => ref.read(passwordObscureProvider.notifier).toggle(),
        icon: isObscure
            ? const Icon(LucideIcons.eye)
            : const Icon(LucideIcons.eyeOff),
      ),
      validator: (value) => InputFieldValidator.validatePasswordField(value),
    );
  }
}
