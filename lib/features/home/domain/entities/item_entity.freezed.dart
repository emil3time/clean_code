// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemEntity {
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get modificationDate => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemEntityCopyWith<ItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEntityCopyWith<$Res> {
  factory $ItemEntityCopyWith(
          ItemEntity value, $Res Function(ItemEntity) then) =
      _$ItemEntityCopyWithImpl<$Res, ItemEntity>;
  @useResult
  $Res call(
      {String description,
      String imageUrl,
      String modificationDate,
      int orderId,
      String title,
      String url});
}

/// @nodoc
class _$ItemEntityCopyWithImpl<$Res, $Val extends ItemEntity>
    implements $ItemEntityCopyWith<$Res> {
  _$ItemEntityCopyWithImpl(this._value, this._then);

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
    Object? url = null,
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
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemEntityCopyWith<$Res>
    implements $ItemEntityCopyWith<$Res> {
  factory _$$_ItemEntityCopyWith(
          _$_ItemEntity value, $Res Function(_$_ItemEntity) then) =
      __$$_ItemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String imageUrl,
      String modificationDate,
      int orderId,
      String title,
      String url});
}

/// @nodoc
class __$$_ItemEntityCopyWithImpl<$Res>
    extends _$ItemEntityCopyWithImpl<$Res, _$_ItemEntity>
    implements _$$_ItemEntityCopyWith<$Res> {
  __$$_ItemEntityCopyWithImpl(
      _$_ItemEntity _value, $Res Function(_$_ItemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? imageUrl = null,
    Object? modificationDate = null,
    Object? orderId = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$_ItemEntity(
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
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ItemEntity implements _ItemEntity {
  const _$_ItemEntity(
      {required this.description,
      required this.imageUrl,
      required this.modificationDate,
      required this.orderId,
      required this.title,
      required this.url});

  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String modificationDate;
  @override
  final int orderId;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'ItemEntity(description: $description, imageUrl: $imageUrl, modificationDate: $modificationDate, orderId: $orderId, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemEntity &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.modificationDate, modificationDate) ||
                other.modificationDate == modificationDate) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, imageUrl,
      modificationDate, orderId, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemEntityCopyWith<_$_ItemEntity> get copyWith =>
      __$$_ItemEntityCopyWithImpl<_$_ItemEntity>(this, _$identity);
}

abstract class _ItemEntity implements ItemEntity {
  const factory _ItemEntity(
      {required final String description,
      required final String imageUrl,
      required final String modificationDate,
      required final int orderId,
      required final String title,
      required final String url}) = _$_ItemEntity;

  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String get modificationDate;
  @override
  int get orderId;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ItemEntityCopyWith<_$_ItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
