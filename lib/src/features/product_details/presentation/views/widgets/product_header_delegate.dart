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

    final double maxShrink = expandedHeight - kToolbarHeight;
    final double shrinkRatio = (shrinkOffset / maxShrink).clamp(0.0, 1.0);
    // 0 → expanded, 1 → collapsed

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
          child: FadeTransition(
            opacity: AlwaysStoppedAnimation(shrinkRatio),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 16.h,
              ),
            ),
          ),
        ),

        // Product thumbnail (only visible when collapsed)
        PositionedDirectional(
          top: mediaPadding.top + (kToolbarHeight - 36) / 2,
          end: 8,
          child: FadeTransition(
            opacity: AlwaysStoppedAnimation(shrinkRatio),
            child: CircleAvatar(
              backgroundImage: NetworkImage(imgUrl),
              radius: 18,
            ),
          ),
        ),

        // Title (fades in as it collapses)
        PositionedDirectional(
          top: mediaPadding.top,
          start: 0,
          end: 0,
          height: kToolbarHeight,
          child: Opacity(
            opacity: shrinkRatio,
            child: Center(child: Text(name, style: AppTextStyles.font19Bold)),
          ),
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
