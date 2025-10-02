part of 'core_widgets.dart';

enum EmptyViewImgType { regular, svg }

class EmptyView extends StatelessWidget {
  const EmptyView({
    super.key,
    required this.imgPath,
    required this.description,
    this.imgType = EmptyViewImgType.regular,
  });

  final String imgPath, description;
  final EmptyViewImgType imgType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 16.h,
      children: [
        Expanded(
          child: switch (imgType) {
            EmptyViewImgType.regular => Image.asset(imgPath, fit: BoxFit.cover),
            EmptyViewImgType.svg => SvgPicture.asset(
              imgPath,
              fit: BoxFit.cover,
            ),
          },
        ),
        Text(
          description,
          style: AppTextStyles.font19Regular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
