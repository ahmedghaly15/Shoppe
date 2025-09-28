import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart';
import '../models/reset_pass_request_body.dart';

part 'reset_pass_api_service.g.dart';

final resetPassApiServiceProvider = Provider.autoDispose<ResetPassApiService>((
  ref,
) {
  final dio = ref.read(dioProvider);
  return ResetPassApiService(dio);
});

@RestApi()
abstract class ResetPassApiService {
  factory ResetPassApiService(Dio dio, {String baseUrl}) = _ResetPassApiService;

  @POST(EndPoints.resetPass)
  Future<void> resetPassword(@Body() ResetPassRequestBody body);
}
