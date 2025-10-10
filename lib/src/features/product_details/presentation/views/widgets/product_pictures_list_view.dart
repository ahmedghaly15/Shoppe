part of '../../../product_details.dart';

class ProductPicturesListView extends StatelessWidget {
  const ProductPicturesListView({super.key, required this.productPictures});

  final List<String> productPictures;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: productPictures.length,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsetsDirectional.only(end: 12.w),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, index) {
        final imgUrl = productPictures[index];
        return AspectRatio(
          aspectRatio: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            child: CustomCachedNetworkImage(imageUrl: imgUrl),
          ),
        );
      },
      separatorBuilder: (_, _) => 6.horizontalSpace,
    );
  }
}
