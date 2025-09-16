import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../utils/app_strings.dart';

class CancelTextButton extends StatelessWidget {
  const CancelTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pop(),
      child: const Text(AppStrings.cancel),
    );
  }
}
