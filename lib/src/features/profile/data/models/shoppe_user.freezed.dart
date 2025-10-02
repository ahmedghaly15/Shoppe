// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shoppe_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShoppeUser {

 String get userId; String get email; String get fullName; String get profilePicture;
/// Create a copy of ShoppeUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShoppeUserCopyWith<ShoppeUser> get copyWith => _$ShoppeUserCopyWithImpl<ShoppeUser>(this as ShoppeUser, _$identity);

  /// Serializes this ShoppeUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShoppeUser&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,email,fullName,profilePicture);

@override
String toString() {
  return 'ShoppeUser(userId: $userId, email: $email, fullName: $fullName, profilePicture: $profilePicture)';
}


}

/// @nodoc
abstract mixin class $ShoppeUserCopyWith<$Res>  {
  factory $ShoppeUserCopyWith(ShoppeUser value, $Res Function(ShoppeUser) _then) = _$ShoppeUserCopyWithImpl;
@useResult
$Res call({
 String userId, String email, String fullName, String profilePicture
});




}
/// @nodoc
class _$ShoppeUserCopyWithImpl<$Res>
    implements $ShoppeUserCopyWith<$Res> {
  _$ShoppeUserCopyWithImpl(this._self, this._then);

  final ShoppeUser _self;
  final $Res Function(ShoppeUser) _then;

/// Create a copy of ShoppeUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? email = null,Object? fullName = null,Object? profilePicture = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ShoppeUser].
extension ShoppeUserPatterns on ShoppeUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShoppeUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShoppeUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShoppeUser value)  $default,){
final _that = this;
switch (_that) {
case _ShoppeUser():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShoppeUser value)?  $default,){
final _that = this;
switch (_that) {
case _ShoppeUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String email,  String fullName,  String profilePicture)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShoppeUser() when $default != null:
return $default(_that.userId,_that.email,_that.fullName,_that.profilePicture);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String email,  String fullName,  String profilePicture)  $default,) {final _that = this;
switch (_that) {
case _ShoppeUser():
return $default(_that.userId,_that.email,_that.fullName,_that.profilePicture);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String email,  String fullName,  String profilePicture)?  $default,) {final _that = this;
switch (_that) {
case _ShoppeUser() when $default != null:
return $default(_that.userId,_that.email,_that.fullName,_that.profilePicture);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShoppeUser implements ShoppeUser {
  const _ShoppeUser({required this.userId, required this.email, required this.fullName, required this.profilePicture});
  factory _ShoppeUser.fromJson(Map<String, dynamic> json) => _$ShoppeUserFromJson(json);

@override final  String userId;
@override final  String email;
@override final  String fullName;
@override final  String profilePicture;

/// Create a copy of ShoppeUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShoppeUserCopyWith<_ShoppeUser> get copyWith => __$ShoppeUserCopyWithImpl<_ShoppeUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShoppeUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShoppeUser&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,email,fullName,profilePicture);

@override
String toString() {
  return 'ShoppeUser(userId: $userId, email: $email, fullName: $fullName, profilePicture: $profilePicture)';
}


}

/// @nodoc
abstract mixin class _$ShoppeUserCopyWith<$Res> implements $ShoppeUserCopyWith<$Res> {
  factory _$ShoppeUserCopyWith(_ShoppeUser value, $Res Function(_ShoppeUser) _then) = __$ShoppeUserCopyWithImpl;
@override @useResult
$Res call({
 String userId, String email, String fullName, String profilePicture
});




}
/// @nodoc
class __$ShoppeUserCopyWithImpl<$Res>
    implements _$ShoppeUserCopyWith<$Res> {
  __$ShoppeUserCopyWithImpl(this._self, this._then);

  final _ShoppeUser _self;
  final $Res Function(_ShoppeUser) _then;

/// Create a copy of ShoppeUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? email = null,Object? fullName = null,Object? profilePicture = null,}) {
  return _then(_ShoppeUser(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,profilePicture: null == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
