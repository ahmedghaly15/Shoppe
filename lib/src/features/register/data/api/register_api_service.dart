import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart';
import '../models/register_request_body.dart';

part 'register_api_service.g.dart';

final registerApiServiceProvider = Provider.autoDispose<RegisterApiService>((
  ref,
) {
  final dio = ref.read(dioProvider);
  return RegisterApiService(dio);
});

@RestApi()
abstract class RegisterApiService {
  factory RegisterApiService(Dio dio, {String baseUrl}) = _RegisterApiService;

  @POST(EndPoints.register)
  Future<void> register(@Body() RegisterRequestBody requestBody);
}
