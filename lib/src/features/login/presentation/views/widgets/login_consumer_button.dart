import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/adaptive_circular_progress_indicator.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../provider/login_provider.dart';

class LoginConsumerButton extends ConsumerWidget {
  const LoginConsumerButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncLogin = ref.watch(loginProvider);
    // TODO: handle loginProvider listener
    return PrimaryButton(
      onPressed: () => ref.read(loginProvider.notifier).validateAndLogin(),
      text: AppStrings.login,
      child: asyncLogin.isLoading
          ? const AdaptiveCircularProgressIndicator()
          : null,
    );
  }
}
