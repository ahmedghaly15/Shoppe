import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart' show SvgPicture;

import '../../../../core/utils/assets.dart';
import 'widgets/login_section.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PositionedDirectional(
            top: 0,
            start: 0,
            child: SvgPicture.asset(Assets.svgsBlueBubbleAboveGrey),
          ),
          PositionedDirectional(
            top: 0,
            bottom: 0,
            end: 0,
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
            child: const SingleChildScrollView(child: LoginSection()),
          ),
        ],
      ),
    );
  }
}
