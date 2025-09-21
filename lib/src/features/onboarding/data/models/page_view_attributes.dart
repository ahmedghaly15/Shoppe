import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_view_attributes.freezed.dart';

@Freezed(toJson: false, fromJson: false)
abstract class PageViewAttributes with _$PageViewAttributes {
  const factory PageViewAttributes({
    required String title,
    required String subtitle,
    required String imagePath,
  }) = _PageViewAttributes;
}
