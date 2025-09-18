import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show LucideIcons;

import '../helpers/input_field_validator.dart';
import '../providers/form_providers.dart';
import '../utils/app_strings.dart';
import 'custom_input_form_field.dart';

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
