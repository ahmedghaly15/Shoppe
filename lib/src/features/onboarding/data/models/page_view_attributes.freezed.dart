// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_view_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PageViewAttributes {

 String get title; String get subtitle; String get imagePath;
/// Create a copy of PageViewAttributes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageViewAttributesCopyWith<PageViewAttributes> get copyWith => _$PageViewAttributesCopyWithImpl<PageViewAttributes>(this as PageViewAttributes, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageViewAttributes&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,title,subtitle,imagePath);

@override
String toString() {
  return 'PageViewAttributes(title: $title, subtitle: $subtitle, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $PageViewAttributesCopyWith<$Res>  {
  factory $PageViewAttributesCopyWith(PageViewAttributes value, $Res Function(PageViewAttributes) _then) = _$PageViewAttributesCopyWithImpl;
@useResult
$Res call({
 String title, String subtitle, String imagePath
});




}
/// @nodoc
class _$PageViewAttributesCopyWithImpl<$Res>
    implements $PageViewAttributesCopyWith<$Res> {
  _$PageViewAttributesCopyWithImpl(this._self, this._then);

  final PageViewAttributes _self;
  final $Res Function(PageViewAttributes) _then;

/// Create a copy of PageViewAttributes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? subtitle = null,Object? imagePath = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PageViewAttributes].
extension PageViewAttributesPatterns on PageViewAttributes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageViewAttributes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageViewAttributes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageViewAttributes value)  $default,){
final _that = this;
switch (_that) {
case _PageViewAttributes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageViewAttributes value)?  $default,){
final _that = this;
switch (_that) {
case _PageViewAttributes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String subtitle,  String imagePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageViewAttributes() when $default != null:
return $default(_that.title,_that.subtitle,_that.imagePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String subtitle,  String imagePath)  $default,) {final _that = this;
switch (_that) {
case _PageViewAttributes():
return $default(_that.title,_that.subtitle,_that.imagePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String subtitle,  String imagePath)?  $default,) {final _that = this;
switch (_that) {
case _PageViewAttributes() when $default != null:
return $default(_that.title,_that.subtitle,_that.imagePath);case _:
  return null;

}
}

}

/// @nodoc


class _PageViewAttributes implements PageViewAttributes {
  const _PageViewAttributes({required this.title, required this.subtitle, required this.imagePath});
  

@override final  String title;
@override final  String subtitle;
@override final  String imagePath;

/// Create a copy of PageViewAttributes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageViewAttributesCopyWith<_PageViewAttributes> get copyWith => __$PageViewAttributesCopyWithImpl<_PageViewAttributes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageViewAttributes&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,title,subtitle,imagePath);

@override
String toString() {
  return 'PageViewAttributes(title: $title, subtitle: $subtitle, imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class _$PageViewAttributesCopyWith<$Res> implements $PageViewAttributesCopyWith<$Res> {
  factory _$PageViewAttributesCopyWith(_PageViewAttributes value, $Res Function(_PageViewAttributes) _then) = __$PageViewAttributesCopyWithImpl;
@override @useResult
$Res call({
 String title, String subtitle, String imagePath
});




}
/// @nodoc
class __$PageViewAttributesCopyWithImpl<$Res>
    implements _$PageViewAttributesCopyWith<$Res> {
  __$PageViewAttributesCopyWithImpl(this._self, this._then);

  final _PageViewAttributes _self;
  final $Res Function(_PageViewAttributes) _then;

/// Create a copy of PageViewAttributes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? subtitle = null,Object? imagePath = null,}) {
  return _then(_PageViewAttributes(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
