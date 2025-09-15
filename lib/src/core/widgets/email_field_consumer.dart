import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helpers/input_field_validator.dart';
import '../providers/form_providers.dart';
import '../utils/app_strings.dart';
import 'custom_input_form_field.dart';

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
