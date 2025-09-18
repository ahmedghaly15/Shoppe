import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../../../core/utils/assets.dart';
import 'widgets/register_section.dart';

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
                    child: const RegisterSection(),
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
