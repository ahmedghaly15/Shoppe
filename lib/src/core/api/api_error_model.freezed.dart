// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiErrorModel {

@JsonKey(name: 'status_code') String? get statusCode; String? get message;@JsonKey(includeFromJson: false, includeToJson: false) String? get errorTypeName; dynamic get errors;
/// Create a copy of ApiErrorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiErrorModelCopyWith<ApiErrorModel> get copyWith => _$ApiErrorModelCopyWithImpl<ApiErrorModel>(this as ApiErrorModel, _$identity);

  /// Serializes this ApiErrorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiErrorModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.errorTypeName, errorTypeName) || other.errorTypeName == errorTypeName)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,errorTypeName,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ApiErrorModel(statusCode: $statusCode, message: $message, errorTypeName: $errorTypeName, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ApiErrorModelCopyWith<$Res>  {
  factory $ApiErrorModelCopyWith(ApiErrorModel value, $Res Function(ApiErrorModel) _then) = _$ApiErrorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status_code') String? statusCode, String? message,@JsonKey(includeFromJson: false, includeToJson: false) String? errorTypeName, dynamic errors
});




}
/// @nodoc
class _$ApiErrorModelCopyWithImpl<$Res>
    implements $ApiErrorModelCopyWith<$Res> {
  _$ApiErrorModelCopyWithImpl(this._self, this._then);

  final ApiErrorModel _self;
  final $Res Function(ApiErrorModel) _then;

/// Create a copy of ApiErrorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? message = freezed,Object? errorTypeName = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errorTypeName: freezed == errorTypeName ? _self.errorTypeName : errorTypeName // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiErrorModel].
extension ApiErrorModelPatterns on ApiErrorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiErrorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiErrorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiErrorModel value)  $default,){
final _that = this;
switch (_that) {
case _ApiErrorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiErrorModel value)?  $default,){
final _that = this;
switch (_that) {
case _ApiErrorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status_code')  String? statusCode,  String? message, @JsonKey(includeFromJson: false, includeToJson: false)  String? errorTypeName,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiErrorModel() when $default != null:
return $default(_that.statusCode,_that.message,_that.errorTypeName,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status_code')  String? statusCode,  String? message, @JsonKey(includeFromJson: false, includeToJson: false)  String? errorTypeName,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _ApiErrorModel():
return $default(_that.statusCode,_that.message,_that.errorTypeName,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status_code')  String? statusCode,  String? message, @JsonKey(includeFromJson: false, includeToJson: false)  String? errorTypeName,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _ApiErrorModel() when $default != null:
return $default(_that.statusCode,_that.message,_that.errorTypeName,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiErrorModel implements ApiErrorModel {
  const _ApiErrorModel({@JsonKey(name: 'status_code') this.statusCode, this.message, @JsonKey(includeFromJson: false, includeToJson: false) this.errorTypeName, this.errors});
  factory _ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

@override@JsonKey(name: 'status_code') final  String? statusCode;
@override final  String? message;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  String? errorTypeName;
@override final  dynamic errors;

/// Create a copy of ApiErrorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiErrorModelCopyWith<_ApiErrorModel> get copyWith => __$ApiErrorModelCopyWithImpl<_ApiErrorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiErrorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiErrorModel&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.errorTypeName, errorTypeName) || other.errorTypeName == errorTypeName)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,message,errorTypeName,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ApiErrorModel(statusCode: $statusCode, message: $message, errorTypeName: $errorTypeName, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ApiErrorModelCopyWith<$Res> implements $ApiErrorModelCopyWith<$Res> {
  factory _$ApiErrorModelCopyWith(_ApiErrorModel value, $Res Function(_ApiErrorModel) _then) = __$ApiErrorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status_code') String? statusCode, String? message,@JsonKey(includeFromJson: false, includeToJson: false) String? errorTypeName, dynamic errors
});




}
/// @nodoc
class __$ApiErrorModelCopyWithImpl<$Res>
    implements _$ApiErrorModelCopyWith<$Res> {
  __$ApiErrorModelCopyWithImpl(this._self, this._then);

  final _ApiErrorModel _self;
  final $Res Function(_ApiErrorModel) _then;

/// Create a copy of ApiErrorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? message = freezed,Object? errorTypeName = freezed,Object? errors = freezed,}) {
  return _then(_ApiErrorModel(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errorTypeName: freezed == errorTypeName ? _self.errorTypeName : errorTypeName // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
