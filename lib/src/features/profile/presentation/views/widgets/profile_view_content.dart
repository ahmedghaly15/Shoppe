part of '../../../profile.dart';

class ProfileViewContent extends ConsumerWidget {
  const ProfileViewContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            const SliverToBoxAdapter(child: _RecentlyViewedTextConsumer()),
            const RecentlyViewedSliverConsumer(),
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

class _RecentlyViewedTextConsumer extends ConsumerWidget {
  const _RecentlyViewedTextConsumer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentlyViewedProducts = ref.watch(recentlyViewedProductsProvider);
    return recentlyViewedProducts.isEmpty
        ? const SizedBox.shrink()
        : const ProfileSectionTitle(title: AppStrings.recentlyViewed);
  }
}
