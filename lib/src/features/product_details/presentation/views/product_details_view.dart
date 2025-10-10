part of '../../product_details.dart';

@RoutePage()
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          if (product.coverPictureUrl != null)
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: ProductHeaderDelegate(
                expandedHeight: height * 0.5,
                imgUrl: product.coverPictureUrl!,
                name: product.name!,
              ),
            ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            sliver: SliverToBoxAdapter(
              child: Text(
                product.name!.capitalize(),
                style: AppTextStyles.font28Bold,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            sliver: SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 18.h, bottom: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.finalPrice.toStringAsFixed(1)}',
                      style: AppTextStyles.font21Bold,
                    ),
                    ProductQuantityIconButtonsConsumer(productId: product.id!),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            sliver: SliverToBoxAdapter(
              child: ProductFinalPriceAndDiscount(
                price: product.price!,
                discountPercentage: product.discountPercentage,
              ),
            ),
          ),
          if (product.description != null)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              sliver: SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(top: 13.h),
                  child: Text(
                    product.description!,
                    style: AppTextStyles.font12Regular,
                  ),
                ),
              ),
            ),
          if (product.categories != null)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              sliver: const SliverToBoxAdapter(
                child: ProductDetailSectionTitle(title: AppStrings.categories),
              ),
            ),
          if (product.categories != null)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              sliver: SliverToBoxAdapter(
                child: Row(
                  spacing: 8.w,
                  children: product.categories!.map((category) {
                    final hasManyCategories = product.categories!.length > 1;
                    return hasManyCategories
                        ? Text(
                            '$category | '.capitalize(),
                            style: AppTextStyles.font15Regular,
                          )
                        : Text(
                            category.capitalize(),
                            style: AppTextStyles.font15Regular,
                          );
                  }).toList(),
                ),
              ),
            ),
          if (product.productPictures != null)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 75.h,
                  margin: EdgeInsets.symmetric(vertical: 16.h),
                  child: ProductPicturesListView(
                    productPictures: product.productPictures!,
                  ),
                ),
              ),
            ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            sliver: const SliverToBoxAdapter(
              child: ProductDetailSectionTitle(title: AppStrings.rating),
            ),
          ),
          if (product.rating != null)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              sliver: SliverToBoxAdapter(
                child: RatingBar.builder(
                  itemSize: 24.h,
                  initialRating: product.rating!,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsetsDirectional.only(end: 7.w),
                  itemBuilder: (context, _) =>
                      const Icon(Icons.star, color: AppColors.colorECA61B),
                  onRatingUpdate: (rate) {},
                ),
              ),
            ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            sliver: SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                child: PrimaryButton(
                  onPressed: () =>
                      context.pushRoute(ReviewsRoute(productId: product.id!)),
                  text: AppStrings.viewAllReviews,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            sliver: SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(bottom: 16.h),
                child: const AddToCartAndBuyNowButtons(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
