import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../../../config/theming/app_text_styles.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/primary_button.dart';
import 'widgets/register_form_consumer.dart';

@RoutePage()
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Stack(
              children: [
                PositionedDirectional(
                  top: 0,
                  start: 0,
                  child: SvgPicture.asset(Assets.svgsStartViewGreyBubble),
                ),
                PositionedDirectional(
                  top: 72.h,
                  end: 0,
                  child: SvgPicture.asset(Assets.svgsStartViewBlueBubble),
                ),
                PositionedDirectional(
                  start: 20.w,
                  end: 20.w,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 54.h, top: 72.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            AppStrings.createAccount,
                            style: AppTextStyles.font52Bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 54.h, bottom: 32.h),
                          child: SvgPicture.asset(Assets.svgsUploadPhoto),
                        ),
                        const RegisterForm(),
                        Container(
                          margin: EdgeInsets.only(top: 52.h, bottom: 24.h),
                          child: PrimaryButton(
                            onPressed: () {},
                            expands: true,
                            text: AppStrings.done,
                          ),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () => context.pop(),
                            child: const Text(AppStrings.cancel),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
