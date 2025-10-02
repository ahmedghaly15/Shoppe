import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart' show EndPoints, dioProvider;
import '../models/shoppe_user.dart';

part 'profile_api_service.g.dart';

final profileApiServiceProvider = Provider.autoDispose<ProfileApiService>((
  ref,
) {
  final dio = ref.read(dioProvider);
  return ProfileApiService(dio);
});

@RestApi()
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio, {String baseUrl}) = _ProfileApiService;

  @GET(EndPoints.me)
  Future<ShoppeUser> fetchProfile();
}
