import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../core/providers/form_providers.dart';
import '../../../../../core/widgets/email_field_consumer.dart';
import '../../../../../core/widgets/name_field_consumer.dart';
import '../../../../../core/widgets/pass_field_consumer.dart';

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
