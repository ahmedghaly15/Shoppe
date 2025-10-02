part of '../../profile.dart';

final profileRepoProvider = Provider.autoDispose<ProfileRepo>((ref) {
  final apiService = ref.read(profileApiServiceProvider);
  return ProfileRepoImpl(apiService);
});

abstract class ProfileRepo {
  Future<ApiRequestResult<ShoppeUser>> fetchProfile();
}

class ProfileRepoImpl extends ProfileRepo {
  final ProfileApiService _apiService;

  ProfileRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<ShoppeUser>> fetchProfile() =>
      executeAndHandleApiRequest(() async => await _apiService.fetchProfile());
}
