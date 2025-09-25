import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_products_request_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchProductsRequestResponse {
  @JsonKey(name: 'item')
  final List<Product> products;
  final int page, pageSize, totalCount;
  final bool hasNextPage, hasPreviousPage;

  FetchProductsRequestResponse({
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

@JsonSerializable()
class Product {
  final String id,
      productCode,
      name,
      description,
      arabicName,
      arabicDescription,
      coverPictureUrl,
      color,
      sellerId;
  final List<String> productPictures, categories;
  final int price, stock, weight, rating, reviewCount, discountPercentage;

  Product({
    required this.id,
    required this.productCode,
    required this.name,
    required this.description,
    required this.arabicName,
    required this.arabicDescription,
    required this.coverPictureUrl,
    required this.color,
    required this.sellerId,
    required this.productPictures,
    required this.categories,
    required this.price,
    required this.stock,
    required this.weight,
    required this.rating,
    required this.reviewCount,
    required this.discountPercentage,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
