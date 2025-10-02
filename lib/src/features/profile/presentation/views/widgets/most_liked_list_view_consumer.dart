part of '../../../profile.dart';

class MostLikedListViewConsumer extends ConsumerWidget {
  const MostLikedListViewConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mostLikedProducts = ref.watch(mostLikedProductsProvider);
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsetsDirectional.only(end: 12.w, top: 8.h, bottom: 8.h),
      itemBuilder: (_, index) => AspectRatio(
        aspectRatio: 0.6,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
          child: Image.asset(mostLikedProducts[index], fit: BoxFit.cover),
        ),
      ),
      separatorBuilder: (_, _) => 6.horizontalSpace,
      itemCount: mostLikedProducts.length,
    );
  }
}
