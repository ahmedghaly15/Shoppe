// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_request_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiRequestResult<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiRequestResult<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiRequestResult<$T>()';
}


}

/// @nodoc
class $ApiRequestResultCopyWith<T,$Res>  {
$ApiRequestResultCopyWith(ApiRequestResult<T> _, $Res Function(ApiRequestResult<T>) __);
}


/// Adds pattern-matching-related methods to [ApiRequestResult].
extension ApiRequestResultPatterns<T> on ApiRequestResult<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ApiRequestResultSuccess<T> value)?  success,TResult Function( _ApiRequestResultError<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiRequestResultSuccess() when success != null:
return success(_that);case _ApiRequestResultError() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ApiRequestResultSuccess<T> value)  success,required TResult Function( _ApiRequestResultError<T> value)  failure,}){
final _that = this;
switch (_that) {
case _ApiRequestResultSuccess():
return success(_that);case _ApiRequestResultError():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ApiRequestResultSuccess<T> value)?  success,TResult? Function( _ApiRequestResultError<T> value)?  failure,}){
final _that = this;
switch (_that) {
case _ApiRequestResultSuccess() when success != null:
return success(_that);case _ApiRequestResultError() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T data)?  success,TResult Function( ApiErrorModel error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiRequestResultSuccess() when success != null:
return success(_that.data);case _ApiRequestResultError() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T data)  success,required TResult Function( ApiErrorModel error)  failure,}) {final _that = this;
switch (_that) {
case _ApiRequestResultSuccess():
return success(_that.data);case _ApiRequestResultError():
return failure(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T data)?  success,TResult? Function( ApiErrorModel error)?  failure,}) {final _that = this;
switch (_that) {
case _ApiRequestResultSuccess() when success != null:
return success(_that.data);case _ApiRequestResultError() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ApiRequestResultSuccess<T> implements ApiRequestResult<T> {
  const _ApiRequestResultSuccess(this.data);
  

 final  T data;

/// Create a copy of ApiRequestResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiRequestResultSuccessCopyWith<T, _ApiRequestResultSuccess<T>> get copyWith => __$ApiRequestResultSuccessCopyWithImpl<T, _ApiRequestResultSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiRequestResultSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ApiRequestResult<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ApiRequestResultSuccessCopyWith<T,$Res> implements $ApiRequestResultCopyWith<T, $Res> {
  factory _$ApiRequestResultSuccessCopyWith(_ApiRequestResultSuccess<T> value, $Res Function(_ApiRequestResultSuccess<T>) _then) = __$ApiRequestResultSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class __$ApiRequestResultSuccessCopyWithImpl<T,$Res>
    implements _$ApiRequestResultSuccessCopyWith<T, $Res> {
  __$ApiRequestResultSuccessCopyWithImpl(this._self, this._then);

  final _ApiRequestResultSuccess<T> _self;
  final $Res Function(_ApiRequestResultSuccess<T>) _then;

/// Create a copy of ApiRequestResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ApiRequestResultSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _ApiRequestResultError<T> implements ApiRequestResult<T> {
  const _ApiRequestResultError(this.error);
  

 final  ApiErrorModel error;

/// Create a copy of ApiRequestResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiRequestResultErrorCopyWith<T, _ApiRequestResultError<T>> get copyWith => __$ApiRequestResultErrorCopyWithImpl<T, _ApiRequestResultError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiRequestResultError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ApiRequestResult<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ApiRequestResultErrorCopyWith<T,$Res> implements $ApiRequestResultCopyWith<T, $Res> {
  factory _$ApiRequestResultErrorCopyWith(_ApiRequestResultError<T> value, $Res Function(_ApiRequestResultError<T>) _then) = __$ApiRequestResultErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel error
});


$ApiErrorModelCopyWith<$Res> get error;

}
/// @nodoc
class __$ApiRequestResultErrorCopyWithImpl<T,$Res>
    implements _$ApiRequestResultErrorCopyWith<T, $Res> {
  __$ApiRequestResultErrorCopyWithImpl(this._self, this._then);

  final _ApiRequestResultError<T> _self;
  final $Res Function(_ApiRequestResultError<T>) _then;

/// Create a copy of ApiRequestResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_ApiRequestResultError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}

/// Create a copy of ApiRequestResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiErrorModelCopyWith<$Res> get error {
  
  return $ApiErrorModelCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
