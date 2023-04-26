// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDTO _$ItemDTOFromJson(Map<String, dynamic> json) {
  return _ItemDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemDTO {
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  DateTime get modificationDate => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDTOCopyWith<ItemDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDTOCopyWith<$Res> {
  factory $ItemDTOCopyWith(ItemDTO value, $Res Function(ItemDTO) then) =
      _$ItemDTOCopyWithImpl<$Res, ItemDTO>;
  @useResult
  $Res call(
      {String description,
      @JsonKey(name: 'image_url') String imageUrl,
      DateTime modificationDate,
      int orderId,
      String title});
}

/// @nodoc
class _$ItemDTOCopyWithImpl<$Res, $Val extends ItemDTO>
    implements $ItemDTOCopyWith<$Res> {
  _$ItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? imageUrl = null,
    Object? modificationDate = null,
    Object? orderId = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      modificationDate: null == modificationDate
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemDTOCopyWith<$Res> implements $ItemDTOCopyWith<$Res> {
  factory _$$_ItemDTOCopyWith(
          _$_ItemDTO value, $Res Function(_$_ItemDTO) then) =
      __$$_ItemDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      @JsonKey(name: 'image_url') String imageUrl,
      DateTime modificationDate,
      int orderId,
      String title});
}

/// @nodoc
class __$$_ItemDTOCopyWithImpl<$Res>
    extends _$ItemDTOCopyWithImpl<$Res, _$_ItemDTO>
    implements _$$_ItemDTOCopyWith<$Res> {
  __$$_ItemDTOCopyWithImpl(_$_ItemDTO _value, $Res Function(_$_ItemDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? imageUrl = null,
    Object? modificationDate = null,
    Object? orderId = null,
    Object? title = null,
  }) {
    return _then(_$_ItemDTO(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      modificationDate: null == modificationDate
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemDTO extends _ItemDTO {
  const _$_ItemDTO(
      {required this.description,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.modificationDate,
      required this.orderId,
      required this.title})
      : super._();

  factory _$_ItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDTOFromJson(json);

  @override
  final String description;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final DateTime modificationDate;
  @override
  final int orderId;
  @override
  final String title;

  @override
  String toString() {
    return 'ItemDTO(description: $description, imageUrl: $imageUrl, modificationDate: $modificationDate, orderId: $orderId, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDTO &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.modificationDate, modificationDate) ||
                other.modificationDate == modificationDate) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, description, imageUrl, modificationDate, orderId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemDTOCopyWith<_$_ItemDTO> get copyWith =>
      __$$_ItemDTOCopyWithImpl<_$_ItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDTOToJson(
      this,
    );
  }
}

abstract class _ItemDTO extends ItemDTO {
  const factory _ItemDTO(
      {required final String description,
      @JsonKey(name: 'image_url') required final String imageUrl,
      required final DateTime modificationDate,
      required final int orderId,
      required final String title}) = _$_ItemDTO;
  const _ItemDTO._() : super._();

  factory _ItemDTO.fromJson(Map<String, dynamic> json) = _$_ItemDTO.fromJson;

  @override
  String get description;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  DateTime get modificationDate;
  @override
  int get orderId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_ItemDTOCopyWith<_$_ItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
