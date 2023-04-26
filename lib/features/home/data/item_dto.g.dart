// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDTO _$$_ItemDTOFromJson(Map<String, dynamic> json) => _$_ItemDTO(
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
      modificationDate: DateTime.parse(json['modificationDate'] as String),
      orderId: json['orderId'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_ItemDTOToJson(_$_ItemDTO instance) =>
    <String, dynamic>{
      'description': instance.description,
      'image_url': instance.imageUrl,
      'modificationDate': instance.modificationDate.toIso8601String(),
      'orderId': instance.orderId,
      'title': instance.title,
    };
