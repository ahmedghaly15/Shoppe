part of '../../layout.dart';

@RoutePage()
class LayoutView extends ConsumerWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Used it here because the provider is used in cart & profile screen
    _fetchProductProviderListener(ref, context);
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

  void _fetchProductProviderListener(WidgetRef ref, BuildContext context) {
    ref.listen(
      fetchProductProvider,
      (_, current) => current.whenOrNull(
        error: (error, _) => context.showToast(error.toString()),
        data: (product) =>
            context.pushRoute(ProductDetailsRoute(product: product)),
      ),
    );
  }
}
