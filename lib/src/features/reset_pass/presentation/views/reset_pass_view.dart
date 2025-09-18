import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../../../config/theming/app_text_styles.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/cancel_text_button.dart';
import '../../../../core/widgets/primary_button.dart';
import 'widgets/reset_pass_form_consumer.dart';

@RoutePage()
class ResetPassView extends StatelessWidget {
  const ResetPassView({super.key});

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
                  end: 0,
                  top: 0,
                  child: SvgPicture.asset(
                    Assets.svgsTopStartBlueAboveGreyBubble,
                  ),
                ),
                PositionedDirectional(
                  end: 20.w,
                  start: 20.w,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.setupNewPass,
                          style: AppTextStyles.font21Bold,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.h, bottom: 23.h),
                          child: Text(
                            AppStrings.pleaseSetupNewPass,
                            style: AppTextStyles.font19Regular,
                          ),
                        ),
                        const ResetPassFormConsumer(),
                        const Spacer(),
                        PrimaryButton(onPressed: () {}, text: AppStrings.save),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(vertical: 24.h),
                          child: const CancelTextButton(),
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
