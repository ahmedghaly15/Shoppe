part of '../../../layout.dart';

class CustomNavigationDestination extends StatelessWidget {
  final IconData icon;
  final String label;

  const CustomNavigationDestination({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(icon, color: AppColors.primaryColor.withAlpha(179)),
      selectedIcon: Icon(icon, color: AppColors.primaryColor),
      label: label,
    );
  }
}
