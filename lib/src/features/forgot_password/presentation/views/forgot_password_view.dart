part of '../../forgot_password.dart';

@RoutePage()
class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

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
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: const SingleChildScrollView(child: ForgotPassSection()),
          ),
        ],
      ),
    );
  }
}
