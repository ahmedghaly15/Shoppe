part of 'core_widgets.dart';

class NameFieldConsumer extends ConsumerWidget {
  const NameFieldConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = ref.watch(nameProvider);
    final autovalidateMode = ref.watch(autovalidateModeProvider);
    return CustomInputFormField(
      controller: nameController,
      autovalidateMode: autovalidateMode,
      placeholderText: AppStrings.name,
      textCapitalization: TextCapitalization.words,
      autofillHints: const [AutofillHints.name],
      validator: (value) => InputFieldValidator.validateNameField(value),
    );
  }
}
