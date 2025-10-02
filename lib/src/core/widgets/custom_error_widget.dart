part of 'core_widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 16.h,
      children: [
        Expanded(child: Image.asset(Assets.imagesError, fit: BoxFit.cover)),
        Text(
          error,
          style: AppTextStyles.font15Regular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
