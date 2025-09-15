import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helpers/input_field_validator.dart';
import '../providers/form_providers.dart';
import '../utils/app_strings.dart';
import 'custom_input_form_field.dart';

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
