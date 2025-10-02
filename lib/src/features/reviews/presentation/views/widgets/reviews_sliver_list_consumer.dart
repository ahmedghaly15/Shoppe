part of '../../../reviews.dart';

class ReviewsSliverListConsumer extends ConsumerWidget {
  const ReviewsSliverListConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productId = context.routeData.argsAs<ReviewsRouteArgs>().productId;
    final asyncFetchReviews = ref.watch(fetchProductReviewsProvider(productId));
    return asyncFetchReviews.when(
      loading: () => SliverList.separated(
        itemCount: 10,
        itemBuilder: (_, _) => const ReviewItemWidget(),
        separatorBuilder: (_, _) => 20.verticalSpace,
      ),
      data: (response) {
        final reviews = response.reviews!.reviews;
        return reviews.isEmpty
            ? const SliverFillRemaining(
                hasScrollBody: false,
                child: EmptyView(description: AppStrings.emptyReviews),
              )
            : SliverList.separated(
                itemBuilder: (_, index) {
                  final review = reviews[index];
                  return ReviewItemWidget(review: review);
                },
                separatorBuilder: (_, _) => 20.verticalSpace,
              );
      },
      error: (error, _) => SliverFillRemaining(
        hasScrollBody: false,
        child: CustomErrorWidget(error: error.toString()),
      ),
    );
  }
}
