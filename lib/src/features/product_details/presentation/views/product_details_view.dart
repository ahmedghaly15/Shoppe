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
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 18.h, bottom: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.finalPrice}',
                    style: AppTextStyles.font21Bold,
                  ),
                  const ProductQuantityIconButtonsConsumer(),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ProductFinalPriceAndDiscount(
              price: product.price!,
              discountPercentage: product.discountPercentage,
            ),
          ),
          if (product.description != null)
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 13.h),
                child: Text(
                  product.description!,
                  style: AppTextStyles.font12Regular,
                ),
              ),
            ),
          if (product.categories != null)
            const SliverToBoxAdapter(
              child: ProductDetailSectionTitle(title: AppStrings.categories),
            ),
          if (product.categories != null)
            SliverToBoxAdapter(
              child: Row(
                spacing: 8.w,
                children: product.categories!
                    .map(
                      (category) =>
                          Text(category, style: AppTextStyles.font15Regular),
                    )
                    .toList(),
              ),
            ),
          if (product.productPictures != null)
            SliverToBoxAdapter(
              child: SizedBox(
                height: 75.h,
                child: ProductPicturesListView(
                  productPictures: product.productPictures!,
                ),
              ),
            ),
          const SliverToBoxAdapter(
            child: ProductDetailSectionTitle(title: AppStrings.rating),
          ),
          if (product.rating != null)
            SliverToBoxAdapter(
              child: RatingBar.builder(
                initialRating: product.rating!,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 7.w),
                itemBuilder: (context, _) =>
                    const Icon(Icons.star, color: AppColors.colorECA61B),
                onRatingUpdate: (rate) {},
              ),
            ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.h),
              child: PrimaryButton(
                onPressed: () =>
                    context.pushRoute(ReviewsRoute(productId: product.id!)),
                text: AppStrings.viewAllReviews,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(bottom: 16.h),
              child: const AddToCartAndBuyNowButtons(),
            ),
          ),
        ],
      ),
    );
  }
}
