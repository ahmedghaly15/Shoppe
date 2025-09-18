import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show ShadForm;

import '../../../../../core/providers/form_providers.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/pass_field_consumer.dart';
import 'confirm_pass_field_consumer.dart';

class ResetPassFormConsumer extends ConsumerWidget {
  const ResetPassFormConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = ref.watch(formKeyProvider);
    return ShadForm(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.h,
        children: const [
          PassFieldConsumer(placeholderText: AppStrings.newPass),
          ConfirmPassFieldConsumer() ,
        ],
      ),
    );
  }
}


