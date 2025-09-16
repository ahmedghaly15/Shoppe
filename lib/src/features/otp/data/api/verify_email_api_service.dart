import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/dio_factory.dart';
import '../../../../core/api/end_points.dart';
import '../models/verify_email_request_body.dart';

part 'verify_email_api_service.g.dart';

final verifyEmailApiServiceProvider =
    Provider.autoDispose<VerifyEmailApiService>((ref) {
      final dio = ref.read(dioProvider);
      return VerifyEmailApiService(dio);
    });

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class VerifyEmailApiService {
  factory VerifyEmailApiService(Dio dio, {String baseUrl}) =
      _VerifyEmailApiService;

  @POST(EndPoints.verifyEmail)
  Future<void> verifyEmail(@Body() VerifyEmailRequestBody body);
}
