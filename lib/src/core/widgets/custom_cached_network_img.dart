part of 'core_widgets.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.imageBuilder,
    this.height,
    this.width,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.fadeOutDuration = const Duration(milliseconds: 1000),
  });

  final String imageUrl;
  final BoxFit fit;
  final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder;
  final double? height, width;
  final Duration fadeInDuration;
  final Duration? fadeOutDuration;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: height,
      height: width,
      imageBuilder: imageBuilder,
      fadeInDuration: fadeInDuration,
      fadeOutDuration: fadeOutDuration,
      errorWidget: (_, _, _) =>
          Icon(LucideIcons.circleAlert, color: Colors.red.shade400),
    );
  }
}
