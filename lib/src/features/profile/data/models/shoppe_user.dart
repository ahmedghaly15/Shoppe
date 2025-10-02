import 'package:freezed_annotation/freezed_annotation.dart';

part 'shoppe_user.g.dart';
part 'shoppe_user.freezed.dart';

@freezed
sealed class ShoppeUser with _$ShoppeUser {
  const factory ShoppeUser({
    required String userId,
    required String email,
    required String fullName,
    required String profilePicture,
  }) = _ShoppeUser;

  factory ShoppeUser.fromJson(Map<String, dynamic> json) =>
      _$ShoppeUserFromJson(json);
  factory ShoppeUser.initial() =>
      const ShoppeUser(userId: '', email: '', fullName: '', profilePicture: '');
}

extension IsEmptyShoppeUser on ShoppeUser {
  bool get isEmpty => this == ShoppeUser.initial();
}
