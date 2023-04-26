// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_failures.freezed.dart';

@freezed
class ItemFailures with _$ItemFailures {
  const ItemFailures._();
  const factory ItemFailures.api(int? errorCode) = _Api;
  const factory ItemFailures.noConnection() = _NoConnection;
}
