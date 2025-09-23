import 'package:json_annotation/json_annotation.dart';

part 'fetch_offers_request_body.g.dart';

@JsonSerializable()
class FetchOffersRequestBody {
  final int page, pageSize;

  FetchOffersRequestBody({this.page = 1, this.pageSize = 6});

  factory FetchOffersRequestBody.fromJson(Map<String, dynamic> json) =>
      _$FetchOffersRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$FetchOffersRequestBodyToJson(this);
}
