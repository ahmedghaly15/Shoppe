part of '../../profile.dart';

final fetchProfileProvider = FutureProvider.autoDispose<ShoppeUser>((
  ref,
) async {
  final cachedShoppeUser = await ref
      .read(secureStorageHelperProvider)
      .getShoppeUser();
  if (cachedShoppeUser != null) return cachedShoppeUser;
  final result = await ref.read(profileRepoProvider).fetchProfile();
  return result.when(
    success: (data) => data,
    failure: (error) => throw error.getAllErrorMsgs,
  );
});
