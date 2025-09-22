import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart';
import '../models/login_request_body.dart';
import '../models/login_request_response.dart';

part 'login_api_service.g.dart';

final loginApiServiceProvider = Provider.autoDispose<LoginApiService>((ref) {
  final dio = ref.read(dioProvider);
  return LoginApiService(dio);
});

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class LoginApiService {
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @POST(EndPoints.login)
  Future<LoginRequestResponse> login(@Body() LoginRequestBody requestBody);
}
