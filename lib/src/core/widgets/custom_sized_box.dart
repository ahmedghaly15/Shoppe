import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({super.key, this.height, this.width});

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height?.h, width: width?.w);
  }
}

class MySizedBox {
  static const CustomSizedBox height50 = CustomSizedBox(height: 50);
}
