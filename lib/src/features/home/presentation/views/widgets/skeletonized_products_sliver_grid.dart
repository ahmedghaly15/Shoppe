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
        child: _ProductsSliverGrid(isLoading: true),
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
  const _ProductsSliverGrid({this.products, this.isLoading = false});

  final List<Product>? products;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.all(Radius.circular(9.r));
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
        return HomeShadowContainer(
          child: MaterialButton(
            onPressed: product != null
                ? () => context.pushRoute(ProductDetailsRoute(product: product))
                : null,
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: Column(
              spacing: 6.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: HomeShadowContainer(
                    child: isLoading
                        ? Skeleton.leaf(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: radius,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : ClipRRect(
                            borderRadius: radius,
                            child: CustomCachedNetworkImage(
                              imageUrl: product?.coverPictureUrl ?? '',
                            ),
                          ),
                  ),
                ),
                Text(
                  product?.name ?? 'Default name',
                  style: AppTextStyles.font10Regular,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$${product?.finalPrice ?? 'Default price'}',
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
