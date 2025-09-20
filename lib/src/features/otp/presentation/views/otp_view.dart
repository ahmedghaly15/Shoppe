import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../../../config/theming/app_text_styles.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets.dart';
import 'widgets/didnt_receive_otp.dart';
import 'widgets/otp_pinput.dart';
import 'widgets/verify_email_consumer_button.dart';

@RoutePage()
class OtpView extends StatelessWidget {
  const OtpView({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PositionedDirectional(
            top: 0,
            start: 0,
            child: SvgPicture.asset(Assets.svgsBlueBubbleAboveGrey),
          ),
          Container(
            margin: EdgeInsets.only(left: 24.w, right: 24.w, top: 64.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  child: Text(
                    'Hello, $email!!',
                    style: AppTextStyles.font28Bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.h, bottom: 23.h),
                  child: Text(
                    AppStrings.weHaveSentYouOtp,
                    style: AppTextStyles.font15Regular,
                  ),
                ),
                const OtpPinput(),
                Container(
                  margin: EdgeInsets.only(top: 36.h, bottom: 8.h),
                  child: const VerifyEmailConsumerButton(),
                ),
                const DidntReceiveOtp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
