part of '../../profile.dart';

@RoutePage()
class ProfileConsumerView extends ConsumerWidget {
  const ProfileConsumerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncFetchProfile = ref.watch(fetchProfileProvider);
    _fetchProfileProviderListener(ref);
    return asyncFetchProfile.when(
      loading: () => const Center(child: AdaptiveCircularProgressIndicator()),
      data: (shoppeUser) => const ProfileViewContent(),
      error: (error, _) => CustomErrorWidget(error: error.toString()),
    );
  }

  void _fetchProfileProviderListener(WidgetRef ref) {
    ref.listen(
      fetchProfileProvider,
      (_, current) => current.whenOrNull(
        data: (shoppeUser) =>
            ref.read(secureStorageHelperProvider).cacheShoppeUser(shoppeUser),
      ),
    );
  }
}
