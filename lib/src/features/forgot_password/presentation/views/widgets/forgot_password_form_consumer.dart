import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show ShadForm;

import '../../../../../core/providers/form_providers.dart';
import '../../../../../core/widgets/email_field_consumer.dart';

class ForgotPasswordFormConsumer extends ConsumerWidget {
  const ForgotPasswordFormConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(formKeyProvider);
    return ShadForm(key: formKey, child: const EmailFieldConsumer());
  }
}
