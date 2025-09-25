part of '../../../home.dart';

class SkeletonizedProductsSliverGrid extends ConsumerWidget {
  const SkeletonizedProductsSliverGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProducts = ref.watch(fetchProductsProvider);
    _fetchProductsProviderListener(ref, context);
    return asyncProducts.when(
      loading: () => const CustomSkeletonizer(
        type: CustomSkeletonizerType.sliver,
        child: _ProductsSliverGrid(),
      ),
      data: (response) {
        final products = response.products;
        return _ProductsSliverGrid(products: products);
      },
      error: (_, _) => const SliverToBoxAdapter(child: SizedBox.shrink()),
    );
  }

  void _fetchProductsProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      fetchProductsProvider,
      (_, current) => current.whenOrNull(
        error: (error, _) => context.showToast(
          error.toString(),
          titleText: AppStrings.topProducts,
        ),
      ),
    );
  }
}

class _ProductsSliverGrid extends StatelessWidget {
  const _ProductsSliverGrid({this.products});

  final List<Product>? products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products?.length ?? 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 5.w,
        mainAxisSpacing: 13.h,
      ),
      itemBuilder: (_, index) {
        final product = products?[index];
        return Skeleton.leaf(
          child: MaterialButton(
            onPressed: product != null
                ? () => context.pushRoute(ProductDetailsRoute(product: product))
                : null,
            padding: EdgeInsets.zero,
            child: Column(
              spacing: 6.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(5.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(9.r)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5.h),
                        blurRadius: 10.r,
                        spreadRadius: 0,
                        color: Colors.black.withAlpha(26),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(9.r)),
                    child: CustomCachedNetworkImage(
                      imageUrl: product?.coverPictureUrl ?? '',
                    ),
                  ),
                ),
                Text(
                  product?.name ?? 'Default name',
                  style: AppTextStyles.font10Regular,
                ),
                Text(
                  '\$${product?.price ?? 'Default price'}',
                  style: AppTextStyles.font15Bold,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
