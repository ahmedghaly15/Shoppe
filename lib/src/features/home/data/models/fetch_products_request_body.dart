import 'package:json_annotation/json_annotation.dart';

part 'fetch_products_request_body.g.dart';

@JsonSerializable()
class FetchProductsRequestBody {
  final String? category, sortBy, sortOrder, searchTerm;
  final bool? isInStock;
  final int? maxPrice, minPrice;
  final int page, pageSize;

  const FetchProductsRequestBody({
    this.page = 1,
    this.pageSize = 10,
    this.category,
    this.sortBy,
    this.sortOrder,
    this.searchTerm,
    this.isInStock,
    this.maxPrice,
    this.minPrice,
  });

  factory FetchProductsRequestBody.fromJson(Map<String, dynamic> json) =>
      _$FetchProductsRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$FetchProductsRequestBodyToJson(this);
}
