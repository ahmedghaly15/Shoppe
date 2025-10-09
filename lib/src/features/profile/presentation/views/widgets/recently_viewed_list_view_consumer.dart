part of '../../../profile.dart';

class RecentlyViewedListViewConsumer extends ConsumerWidget {
  const RecentlyViewedListViewConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentlyViewedProducts = ref.watch(recentlyViewedProductsProvider);
    return ListView.separated(
      itemCount: recentlyViewedProducts.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsetsDirectional.only(end: 12.w, top: 8.h, bottom: 8.h),
      itemBuilder: (_, index) {
        final product = recentlyViewedProducts[index];
        return ShadowContainer(
          height: 60,
          width: 60,
          shape: BoxShape.circle,
          child: CustomCachedNetworkImage(
            imageUrl: product.coverPictureUrl!,
            imageBuilder: (_, image) =>
                CircleAvatar(backgroundImage: image, radius: 20.r),
          ),
        );
      },
      separatorBuilder: (_, _) => 9.horizontalSpace,
    );
  }
}
