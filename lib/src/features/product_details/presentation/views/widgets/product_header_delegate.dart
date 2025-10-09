part of '../../../product_details.dart';

class ProductHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final String imgUrl, name;

  ProductHeaderDelegate({
    required this.expandedHeight,
    required this.imgUrl,
    required this.name,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final mediaPadding = MediaQuery.of(context).padding;

    return Stack(
      fit: StackFit.expand,
      children: [
        // Background image
        Positioned.fill(child: CustomCachedNetworkImage(imageUrl: imgUrl)),

        // overlay for app bar
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black45],
              stops: [0.5, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated,
            ),
          ),
        ),

        PositionedDirectional(
          top: mediaPadding.top + (kToolbarHeight - 36) / 2,
          start: 8,
          child: const ArrowBackIconButton(),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
