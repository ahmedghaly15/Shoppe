part of '../../../profile.dart';

class ProfileViewContent extends StatelessWidget {
  const ProfileViewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 27.h, horizontal: 24.w),
        child: CustomScrollView(
          slivers: [
            const CustomProfileSliverAppBar(),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 18.h),
              sliver: const SliverToBoxAdapter(child: VoucherExpiryListTile()),
            ),
            const SliverToBoxAdapter(
              child: ProfileSectionTitle(title: AppStrings.recentlyViewed),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 12.h, bottom: 25.h),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: 65.h,
                  child: const RecentlyViewedListViewConsumer(),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: ProfileSectionTitle(title: AppStrings.mostLiked),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(bottom: 24.h),
                height: 175.h,
                child: const MostLikedListViewConsumer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
