// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_entity.freezed.dart';

@freezed
class ItemEntity with _$ItemEntity {
  const factory ItemEntity({
    required String description,
    required String imageUrl,
    required String modificationDate,
    required int orderId,
    required String title,
    required String url,
  }) = _ItemEntity;
}
