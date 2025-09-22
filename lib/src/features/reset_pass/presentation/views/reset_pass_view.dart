part of '../../reset_pass.dart';

@RoutePage()
class ResetPassView extends StatelessWidget {
  const ResetPassView({super.key, required this.params});

  final ResetPassViewParams params;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PositionedDirectional(
            end: 0,
            top: 0,
            child: SvgPicture.asset(Assets.svgsTopStartBlueAboveGreyBubble),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Text(
                          AppStrings.setupNewPass,
                          style: AppTextStyles.font21Bold,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.h, bottom: 23.h),
                          child: Text(
                            AppStrings.pleaseSetupNewPass,
                            style: AppTextStyles.font19Regular,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const ResetPassFormConsumer(),
                        const Spacer(),
                        const ResetPassButtonConsumer(),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(vertical: 24.h),
                          child: const CancelTextButton(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
