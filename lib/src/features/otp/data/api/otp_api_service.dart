import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/dio_factory.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/models/email_request_body.dart';
import '../models/otp_request_body.dart';

part 'otp_api_service.g.dart';

final otpApiServiceProvider = Provider.autoDispose<OtpApiService>((ref) {
  final dio = ref.read(dioProvider);
  return OtpApiService(dio);
});

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class OtpApiService {
  factory OtpApiService(Dio dio, {String baseUrl}) = _OtpApiService;

  @POST(EndPoints.verifyEmail)
  Future<void> verifyEmail(@Body() OtpRequestBody body);

  @POST(EndPoints.resendOtp)
  Future<void> resendOtp(@Body() EmailRequestBody body);
}
