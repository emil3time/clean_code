// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_dto.freezed.dart';
part 'item_dto.g.dart';

@freezed
class ItemDTO with _$ItemDTO {
  const ItemDTO._();
  const factory ItemDTO({
    required String description,
    @JsonKey(name: 'image_url') required String imageUrl,
    required DateTime modificationDate,
    required int orderId,
    required String title,
  }) = _ItemDTO;

  factory ItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ItemDTOFromJson(json);
}
