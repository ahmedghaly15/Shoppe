part of '../../profile.dart';

final fetchProfileProvider = FutureProvider.autoDispose<ShoppeUser>((
  ref,
) async {
  final result = await ref.read(profileRepoProvider).fetchProfile();
  return result.when(
    success: (data) => data,
    failure: (error) => throw error.getAllErrorMsgs(),
  );
});
