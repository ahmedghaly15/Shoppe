import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart' show EndPoints, dioProvider;
import '../models/fetch_offers_request_body.dart';
import '../models/fetch_offers_request_response.dart';

part 'home_api_service.g.dart';

final homeApiServiceProvider = Provider.autoDispose<HomeApiService>((ref) {
  final dio = ref.read(dioProvider);
  return HomeApiService(dio);
});

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(EndPoints.fetchOffers)
  Future<FetchOffersRequestResponse> fetchOffers(
    @Body() FetchOffersRequestBody body,
  );
}
