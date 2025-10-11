part of '../../layout.dart';

@RoutePage()
class LayoutView extends ConsumerWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncSelectedIndex = ref.watch(layoutActiveIndexProvider);
    return AutoTabsScaffold(
      routes: const [HomeRoute(), CartRoute(), ProfileConsumerRoute()],
      bottomNavigationBuilder: (_, tabsRouter) => NavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        selectedIndex: asyncSelectedIndex.value ?? tabsRouter.activeIndex,
        onDestinationSelected: (index) {
          tabsRouter.setActiveIndex(index);
          ref.read(layoutActiveIndexProvider.notifier).setActiveIndex(index);
        },
        destinations: const [
          CustomNavigationDestination(
            icon: LucideIcons.house,
            label: AppStrings.home,
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
