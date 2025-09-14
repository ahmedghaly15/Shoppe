import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/theming/app_text_styles.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/const_strings.dart';
import '../../../../core/widgets/primary_button.dart';
import 'widgets/already_have_acc_text_button.dart';
import 'widgets/circle_shadow_app_logo.dart';

@RoutePage()
class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            const CircleShadowAppLogo(),
            Container(
              margin: EdgeInsets.only(top: 24.h, bottom: 18.h),
              child: Text(
                ConstStrings.appName,
                style: AppTextStyles.font52Bold,
              ),
            ),
            Text(
              AppStrings.startViewWelcomeText,
              style: AppTextStyles.font19Regular,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            PrimaryButton(
              expands: true,
              onPressed: () => context.pushRoute(const RegisterRoute()),
              text: AppStrings.letsGetStarted,
            ),
            const AlreadyHaveAccTextButton(),
          ],
        ),
      ),
    );
  }
}
