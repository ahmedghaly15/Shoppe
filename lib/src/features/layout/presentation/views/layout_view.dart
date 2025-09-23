part of '../../layout.dart';

@RoutePage()
class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HomeRoute(), WishlistRoute(), CartRoute(), ProfileRoute()],
      bottomNavigationBuilder: (_, tabsRouter) => NavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        selectedIndex: tabsRouter.activeIndex,
        onDestinationSelected: (index) => tabsRouter.setActiveIndex(index),
        destinations: const [
          CustomNavigationDestination(
            icon: LucideIcons.house,
            label: AppStrings.home,
          ),
          CustomNavigationDestination(
            icon: LucideIcons.heart,
            label: AppStrings.wishlist,
          ),
          CustomNavigationDestination(
            icon: LucideIcons.shoppingCart,
            label: AppStrings.cart,
          ),
          CustomNavigationDestination(
            icon: LucideIcons.user,
            label: AppStrings.profile,
          ),
        ],
      ),
    );
  }
}
