import 'package:json_annotation/json_annotation.dart';

part 'fetch_orders_request_body.g.dart';

@JsonSerializable()
class FetchOrdersRequestBody {
  final int limit;

  const FetchOrdersRequestBody({this.limit = 1});

  factory FetchOrdersRequestBody.fromJson(Map<String, dynamic> json) =>
      _$FetchOrdersRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$FetchOrdersRequestBodyToJson(this);
}
