// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 String? get id; String? get productCode; String? get name; String? get description; String? get arabicName; String? get arabicDescription; String? get coverPictureUrl; String? get color; String? get sellerId; List<String>? get productPictures; List<String>? get categories; double? get price; double? get weight; double? get rating; int? get stock; int? get reviewCount; int? get discountPercentage;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.arabicName, arabicName) || other.arabicName == arabicName)&&(identical(other.arabicDescription, arabicDescription) || other.arabicDescription == arabicDescription)&&(identical(other.coverPictureUrl, coverPictureUrl) || other.coverPictureUrl == coverPictureUrl)&&(identical(other.color, color) || other.color == color)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&const DeepCollectionEquality().equals(other.productPictures, productPictures)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.price, price) || other.price == price)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productCode,name,description,arabicName,arabicDescription,coverPictureUrl,color,sellerId,const DeepCollectionEquality().hash(productPictures),const DeepCollectionEquality().hash(categories),price,weight,rating,stock,reviewCount,discountPercentage);

@override
String toString() {
  return 'Product(id: $id, productCode: $productCode, name: $name, description: $description, arabicName: $arabicName, arabicDescription: $arabicDescription, coverPictureUrl: $coverPictureUrl, color: $color, sellerId: $sellerId, productPictures: $productPictures, categories: $categories, price: $price, weight: $weight, rating: $rating, stock: $stock, reviewCount: $reviewCount, discountPercentage: $discountPercentage)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String? id, String? productCode, String? name, String? description, String? arabicName, String? arabicDescription, String? coverPictureUrl, String? color, String? sellerId, List<String>? productPictures, List<String>? categories, double? price, double? weight, double? rating, int? stock, int? reviewCount, int? discountPercentage
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productCode = freezed,Object? name = freezed,Object? description = freezed,Object? arabicName = freezed,Object? arabicDescription = freezed,Object? coverPictureUrl = freezed,Object? color = freezed,Object? sellerId = freezed,Object? productPictures = freezed,Object? categories = freezed,Object? price = freezed,Object? weight = freezed,Object? rating = freezed,Object? stock = freezed,Object? reviewCount = freezed,Object? discountPercentage = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,arabicName: freezed == arabicName ? _self.arabicName : arabicName // ignore: cast_nullable_to_non_nullable
as String?,arabicDescription: freezed == arabicDescription ? _self.arabicDescription : arabicDescription // ignore: cast_nullable_to_non_nullable
as String?,coverPictureUrl: freezed == coverPictureUrl ? _self.coverPictureUrl : coverPictureUrl // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,productPictures: freezed == productPictures ? _self.productPictures : productPictures // ignore: cast_nullable_to_non_nullable
as List<String>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,discountPercentage: freezed == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? productCode,  String? name,  String? description,  String? arabicName,  String? arabicDescription,  String? coverPictureUrl,  String? color,  String? sellerId,  List<String>? productPictures,  List<String>? categories,  double? price,  double? weight,  double? rating,  int? stock,  int? reviewCount,  int? discountPercentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.productCode,_that.name,_that.description,_that.arabicName,_that.arabicDescription,_that.coverPictureUrl,_that.color,_that.sellerId,_that.productPictures,_that.categories,_that.price,_that.weight,_that.rating,_that.stock,_that.reviewCount,_that.discountPercentage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? productCode,  String? name,  String? description,  String? arabicName,  String? arabicDescription,  String? coverPictureUrl,  String? color,  String? sellerId,  List<String>? productPictures,  List<String>? categories,  double? price,  double? weight,  double? rating,  int? stock,  int? reviewCount,  int? discountPercentage)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.productCode,_that.name,_that.description,_that.arabicName,_that.arabicDescription,_that.coverPictureUrl,_that.color,_that.sellerId,_that.productPictures,_that.categories,_that.price,_that.weight,_that.rating,_that.stock,_that.reviewCount,_that.discountPercentage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? productCode,  String? name,  String? description,  String? arabicName,  String? arabicDescription,  String? coverPictureUrl,  String? color,  String? sellerId,  List<String>? productPictures,  List<String>? categories,  double? price,  double? weight,  double? rating,  int? stock,  int? reviewCount,  int? discountPercentage)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.productCode,_that.name,_that.description,_that.arabicName,_that.arabicDescription,_that.coverPictureUrl,_that.color,_that.sellerId,_that.productPictures,_that.categories,_that.price,_that.weight,_that.rating,_that.stock,_that.reviewCount,_that.discountPercentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({this.id, this.productCode, this.name, this.description, this.arabicName, this.arabicDescription, this.coverPictureUrl, this.color, this.sellerId, final  List<String>? productPictures, final  List<String>? categories, this.price, this.weight, this.rating, this.stock, this.reviewCount, this.discountPercentage}): _productPictures = productPictures,_categories = categories;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  String? id;
@override final  String? productCode;
@override final  String? name;
@override final  String? description;
@override final  String? arabicName;
@override final  String? arabicDescription;
@override final  String? coverPictureUrl;
@override final  String? color;
@override final  String? sellerId;
 final  List<String>? _productPictures;
@override List<String>? get productPictures {
  final value = _productPictures;
  if (value == null) return null;
  if (_productPictures is EqualUnmodifiableListView) return _productPictures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _categories;
@override List<String>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? price;
@override final  double? weight;
@override final  double? rating;
@override final  int? stock;
@override final  int? reviewCount;
@override final  int? discountPercentage;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.arabicName, arabicName) || other.arabicName == arabicName)&&(identical(other.arabicDescription, arabicDescription) || other.arabicDescription == arabicDescription)&&(identical(other.coverPictureUrl, coverPictureUrl) || other.coverPictureUrl == coverPictureUrl)&&(identical(other.color, color) || other.color == color)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&const DeepCollectionEquality().equals(other._productPictures, _productPictures)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.price, price) || other.price == price)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productCode,name,description,arabicName,arabicDescription,coverPictureUrl,color,sellerId,const DeepCollectionEquality().hash(_productPictures),const DeepCollectionEquality().hash(_categories),price,weight,rating,stock,reviewCount,discountPercentage);

@override
String toString() {
  return 'Product(id: $id, productCode: $productCode, name: $name, description: $description, arabicName: $arabicName, arabicDescription: $arabicDescription, coverPictureUrl: $coverPictureUrl, color: $color, sellerId: $sellerId, productPictures: $productPictures, categories: $categories, price: $price, weight: $weight, rating: $rating, stock: $stock, reviewCount: $reviewCount, discountPercentage: $discountPercentage)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? productCode, String? name, String? description, String? arabicName, String? arabicDescription, String? coverPictureUrl, String? color, String? sellerId, List<String>? productPictures, List<String>? categories, double? price, double? weight, double? rating, int? stock, int? reviewCount, int? discountPercentage
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productCode = freezed,Object? name = freezed,Object? description = freezed,Object? arabicName = freezed,Object? arabicDescription = freezed,Object? coverPictureUrl = freezed,Object? color = freezed,Object? sellerId = freezed,Object? productPictures = freezed,Object? categories = freezed,Object? price = freezed,Object? weight = freezed,Object? rating = freezed,Object? stock = freezed,Object? reviewCount = freezed,Object? discountPercentage = freezed,}) {
  return _then(_Product(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,arabicName: freezed == arabicName ? _self.arabicName : arabicName // ignore: cast_nullable_to_non_nullable
as String?,arabicDescription: freezed == arabicDescription ? _self.arabicDescription : arabicDescription // ignore: cast_nullable_to_non_nullable
as String?,coverPictureUrl: freezed == coverPictureUrl ? _self.coverPictureUrl : coverPictureUrl // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,productPictures: freezed == productPictures ? _self._productPictures : productPictures // ignore: cast_nullable_to_non_nullable
as List<String>?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,discountPercentage: freezed == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
