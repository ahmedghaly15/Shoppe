part of '../../reviews.dart';

@RoutePage()
class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const CustomSliverAppBar(titleText: AppStrings.reviews),
              SliverPadding(
                padding: EdgeInsets.only(top: 26.h),
                sliver: const ReviewsSliverListConsumer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
