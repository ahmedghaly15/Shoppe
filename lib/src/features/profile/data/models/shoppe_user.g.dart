// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoppe_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShoppeUser _$ShoppeUserFromJson(Map<String, dynamic> json) => _ShoppeUser(
  userId: json['userId'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  profilePicture: json['profilePicture'] as String,
);

Map<String, dynamic> _$ShoppeUserToJson(_ShoppeUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'fullName': instance.fullName,
      'profilePicture': instance.profilePicture,
    };
