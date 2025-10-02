part of '../../../profile.dart';

class ProfileStyledIconButton extends StatelessWidget {
  const ProfileStyledIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(const CircleBorder()),
        backgroundColor: WidgetStateProperty.all(AppColors.colorE5EBFC),
        foregroundColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.pressed)
              ? Colors.white
              : AppColors.primaryColor,
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
