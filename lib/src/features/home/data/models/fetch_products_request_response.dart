import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/product.dart';

part 'fetch_products_request_response.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class FetchProductsRequestResponse {
  @JsonKey(name: 'items')
  final List<Product> products;
  final int page, pageSize, totalCount;
  final bool hasNextPage, hasPreviousPage;

  const FetchProductsRequestResponse({
    required this.products,
    required this.page,
    required this.pageSize,
    required this.totalCount,
    required this.hasNextPage,
    required this.hasPreviousPage,
  });

  factory FetchProductsRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchProductsRequestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FetchProductsRequestResponseToJson(this);
}
