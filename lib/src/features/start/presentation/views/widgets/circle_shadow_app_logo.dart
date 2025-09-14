import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../../core/utils/assets.dart';

class CircleShadowAppLogo extends StatelessWidget {
  const CircleShadowAppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 21.h, horizontal: 26.w),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3.h),
            blurRadius: 8.r,
            spreadRadius: 0,
            color: Colors.black.withAlpha(41),
          ),
        ],
      ),
      child: SvgPicture.asset(Assets.svgsAppLogo),
    );
  }
}
