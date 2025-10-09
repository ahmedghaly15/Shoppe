part of '../../home.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                spacing: 15.w,
                children: [
                  Text(ConstStrings.appName, style: AppTextStyles.font21Bold),
                  const Expanded(child: HomeSearchFieldConsumer()),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: HomeSectionTitle(titleText: AppStrings.offers),
            ),
            const SliverToBoxAdapter(
              child: SkeletonizedOffersListViewConsumer(),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 10.h, bottom: 19.h),
                child: const OffersDotIndicatorsConsumer(),
              ),
            ),
            const SliverToBoxAdapter(
              child: HomeSectionTitle(titleText: AppStrings.categories),
            ),
            const SliverToBoxAdapter(
              child: SkeletonizedCategoriesListViewConsumer(),
            ),
            const SliverToBoxAdapter(
              child: HomeSectionTitle(titleText: AppStrings.topProducts),
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 8.h),
              sliver: const SkeletonizedProductsSliverGrid(),
            ),
          ],
        ),
      ),
    );
  }
}
