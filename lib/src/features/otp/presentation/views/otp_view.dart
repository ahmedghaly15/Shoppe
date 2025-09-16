import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../../../config/theming/app_text_styles.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/primary_button.dart';
import 'widgets/otp_pinput.dart';

@RoutePage()
class OtpView extends StatelessWidget {
  const OtpView({super.key, required this.email});

  final String email;

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
                Positioned(
                  top: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      Text('Hello, $email!!', style: AppTextStyles.font28Bold),
                      Container(
                        margin: EdgeInsets.only(top: 30.h, bottom: 23.h),
                        child: Text(
                          AppStrings.weHaveSentYouOtp,
                          style: AppTextStyles.font19Regular,
                        ),
                      ),
                      const OtpPinput(),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 50.h),
                        child: PrimaryButton(
                          onPressed: () {},
                          text: AppStrings.verify,
                        ),
                      ),
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
