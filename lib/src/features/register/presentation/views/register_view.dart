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
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
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
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 54.h,
                  top: size.height * 0.13,
                  left: 24.w,
                  right: 24.w,
                ),
                child: const RegisterSection(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
