import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show LucideIcons;

import '../../../../../core/helpers/input_field_validator.dart';
import '../../../../../core/providers/form_providers.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_input_form_field.dart';

class ConfirmPassFieldConsumer extends ConsumerWidget {
  const ConfirmPassFieldConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(confirmPassProvider);
    final password = ref.watch(passwordProvider).text.trim();
    final autovalidateMode = ref.watch(autovalidateModeProvider);
    final isObscure = ref.watch(confirmPassObscureProvider);
    return CustomInputFormField(
      controller: controller,
      autovalidateMode: autovalidateMode,
      placeholderText: AppStrings.repeatPass,
      keyboardType: TextInputType.visiblePassword,
      autofillHints: const [AutofillHints.password],
      validator: (value) =>
          InputFieldValidator.validateConfirmPass(value, password),
      obscureText: isObscure,
      trailing: IconButton(
        onPressed: () => ref.read(confirmPassObscureProvider.notifier).toggle(),
        icon: isObscure
            ? const Icon(LucideIcons.eye)
            : const Icon(LucideIcons.eyeOff),
      ),
    );
  }
}
