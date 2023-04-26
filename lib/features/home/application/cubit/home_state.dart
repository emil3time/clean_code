part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    required List<ItemEntity> items,
  }) = _Initial;
  const factory HomeState.loading({
    required int itemsPerPage,
    required List<ItemEntity> items,
  }) = _Loading;
  const factory HomeState.success({
    required List<ItemEntity> items,
  }) = _Success;
  const factory HomeState.failure({
    required List<ItemEntity> items,
    required ItemFailures failures,
  }) = _Failure;
}
