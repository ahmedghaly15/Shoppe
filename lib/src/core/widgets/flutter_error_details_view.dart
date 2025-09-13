import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shoppe/src/core/helpers/extensions.dart';

import '../api/api_error_message.dart';

class FlutterErrorDetailsView extends StatelessWidget {
  const FlutterErrorDetailsView({super.key, required this.details});

  final FlutterErrorDetails details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          spacing: 16.h,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: Icon(LucideIcons.circleAlert)),
            Text(
              ApiErrorMessage.defaultError,
              style: context.shadTextTheme.h4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
