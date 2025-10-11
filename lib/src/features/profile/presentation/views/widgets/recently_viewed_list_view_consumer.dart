part of '../../../profile.dart';

class RecentlyViewedSliverConsumer extends ConsumerWidget {
  const RecentlyViewedSliverConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentlyViewedProducts = ref.watch(recentlyViewedProductsProvider);
    final asyncFetchProduct = ref.watch(fetchProductProvider);
    return recentlyViewedProducts.isEmpty
        ? const SliverToBoxAdapter(child: SizedBox.shrink())
        : SliverPadding(
            padding: EdgeInsets.only(top: 12.h, bottom: 25.h),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 65.h,
                child: ListView.separated(
                  itemCount: recentlyViewedProducts.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsetsDirectional.only(
                    end: 12.w,
                    top: 8.h,
                    bottom: 8.h,
                  ),
                  itemBuilder: (_, index) {
                    final product = recentlyViewedProducts[index];
                    return GestureDetector(
                      onTap: asyncFetchProduct.isLoading
                          ? null
                          : () => ref
                                .read(fetchProductProvider.notifier)
                                .fetchProduct(product.id!),
                      child: ShadowContainer(
                        radius: 60,
                        shape: BoxShape.circle,
                        child: CustomCachedNetworkImage(
                          imageUrl: product.coverPictureUrl!,
                          imageBuilder: (_, image) => CircleAvatar(
                            backgroundImage: image,
                            radius: 20.r,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, _) => 9.horizontalSpace,
                ),
              ),
            ),
          );
  }
}
