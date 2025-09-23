import 'package:json_annotation/json_annotation.dart';

part 'fetch_offers_request_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchOffersRequestResponse {
  final OffersResponseBody? offers;

  const FetchOffersRequestResponse({this.offers});

  factory FetchOffersRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchOffersRequestResponseFromJson(json);

  factory FetchOffersRequestResponse.empty() =>
      const FetchOffersRequestResponse();

  Map<String, dynamic> toJson() => _$FetchOffersRequestResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OffersResponseBody {
  final List<Offer>? items;
  final int? page, pageSize, totalCount;
  final bool? hasNextPage, hasPreviousPage;

  OffersResponseBody({
    this.items,
    this.page,
    this.pageSize,
    this.totalCount,
    this.hasNextPage,
    this.hasPreviousPage,
  });

  factory OffersResponseBody.fromJson(Map<String, dynamic> json) =>
      _$OffersResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$OffersResponseBodyToJson(this);
}

@JsonSerializable()
class Offer {
  final String? id, name, description, coverUrl, createdAt;

  Offer({this.id, this.name, this.description, this.coverUrl, this.createdAt});

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
  Map<String, dynamic> toJson() => _$OfferToJson(this);
}
