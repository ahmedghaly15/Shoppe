import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../../../config/theming/app_text_styles.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/cancel_text_button.dart';
import '../../../../core/widgets/primary_button.dart';
import 'widgets/login_form_consumer.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  child: SvgPicture.asset(Assets.svgsBlueBubbleAboveGrey),
                ),
                PositionedDirectional(
                  top: 0,
                  bottom: 0,
                  child: SvgPicture.asset(Assets.svgsSmallBlueBubble),
                ),
                PositionedDirectional(
                  bottom: 0,
                  end: 0,
                  child: SvgPicture.asset(Assets.svgsLargeGreyBubble),
                ),
                PositionedDirectional(
                  bottom: 0,
                  start: 20.w,
                  end: 20.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.login, style: AppTextStyles.font52Bold),
                      Container(
                        margin: EdgeInsets.only(top: 8.h, bottom: 18.h),
                        child: Text(
                          AppStrings.goodToSeeYouBack,
                          style: AppTextStyles.font19Regular,
                        ),
                      ),
                      const LoginFormConsumer(),
                      Container(
                        margin: EdgeInsets.only(top: 36.h, bottom: 14.h),
                        child: PrimaryButton(
                          onPressed: () {},
                          text: AppStrings.next,
                        ),
                      ),
                      const CancelTextButton(),
                    ],
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
