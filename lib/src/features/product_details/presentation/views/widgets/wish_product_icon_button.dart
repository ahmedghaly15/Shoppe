part of '../../../product_details.dart';

class WishProductIconButton extends StatefulWidget {
  const WishProductIconButton({super.key});

  @override
  State<WishProductIconButton> createState() => _WishProductIconButtonState();
}

class _WishProductIconButtonState extends State<WishProductIconButton> {
  bool _isWished = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isWished = !_isWished;
        });
      },
      icon: Icon(
        _isWished ? Icons.favorite : Icons.favorite_border,
        color: AppColors.color202020,
        size: 24.h,
      ),
    );
  }
}
