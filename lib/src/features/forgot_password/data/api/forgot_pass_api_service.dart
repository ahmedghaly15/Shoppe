import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/dio_factory.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/models/email_request_body.dart';
import '../../../otp/data/models/otp_request_body.dart';

part 'forgot_pass_api_service.g.dart';

final forgotPassApiServiceProvider = Provider.autoDispose<ForgotPassApiService>(
  (ref) {
    final dio = ref.watch(dioProvider);
    return ForgotPassApiService(dio);
  },
);

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ForgotPassApiService {
  factory ForgotPassApiService(Dio dio, {String baseUrl}) =
      _ForgotPassApiService;

  @POST(EndPoints.forgotPass)
  Future<void> forgotPass(@Body() EmailRequestBody body);

  @POST(EndPoints.validateOtp)
  Future<void> validateOtp(@Body() OtpRequestBody body);
}
