part of '../../../home.dart';

class SkeletonizedOffersListViewConsumer extends ConsumerWidget {
  const SkeletonizedOffersListViewConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncOffers = ref.watch(fetchOffersProvider);
    _fetchOffersProviderListener(ref, context);
    return asyncOffers.when(
      skipError: true,
      skipLoadingOnRefresh: true,
      loading: () => const CustomSkeletonizer(
        child: _OffersListViewConsumer(isLoading: true),
      ),
      data: (data) {
        final offers = data.offers?.items;
        if (offers.isNullOrEmpty) {
          return const SizedBox.shrink();
        }
        return _OffersListViewConsumer(offers: offers);
      },
      error: (error, _) => const SizedBox.shrink(),
    );
  }

  void _fetchOffersProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      fetchOffersProvider,
      (_, current) => current.whenOrNull(
        error: (error, _) =>
            context.showToast(error.toString(), titleText: AppStrings.offers),
      ),
    );
  }
}

class _OffersListViewConsumer extends ConsumerWidget {
  const _OffersListViewConsumer({this.offers, this.isLoading = false});

  final List<Offer>? offers;
  final bool isLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radius = BorderRadius.circular(16.r);
    return CarouselSlider.builder(
      itemCount: offers?.length ?? 10,
      options: CarouselOptions(
        aspectRatio: 1.5,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 1),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        onPageChanged: (index, _) {
          ref.read(currentOfferIndexProvider.notifier).setCurrentIndex(index);
        },
      ),
      itemBuilder: (_, index, pageViewIndex) {
        if (isLoading) {
          return Skeleton.leaf(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: radius,
              ),
            ),
          );
        }
        final offer = offers![index];
        return CustomCachedNetworkImage(
          imageUrl: offer.coverUrl!,
          fit: BoxFit.cover,
          imageBuilder: (_, image) => Container(
            margin: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              image: DecorationImage(image: image, fit: BoxFit.cover),
              borderRadius: radius,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3.h),
                  blurRadius: 8.r,
                  spreadRadius: 0,
                  color: Colors.black.withAlpha(41),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
