part of '../../../home.dart';

class HomeSectionTitle extends StatelessWidget {
  const HomeSectionTitle({
    super.key,
  required this.titleText,
  });

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 22.h, bottom: 10.h),
      child: Text(titleText, style: AppTextStyles.font19Bold),
    );
  }
}