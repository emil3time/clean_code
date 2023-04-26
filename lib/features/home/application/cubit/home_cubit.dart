// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../../core/error/item_failures.dart';
import '../../../../../theme/utils/data_config.dart';
import '../../data/repositories/items_repository.dart';
import '../../domain/entities/item_entity.dart';

// Project imports:

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final ItemsRepository _repository;

  HomeCubit(this._repository) : super(HomeState.initial(items: <ItemEntity>[]));

  Future<void> getList() async {
    emit(HomeState.loading(
        itemsPerPage: DataConfig.itemsPerPage, items: <ItemEntity>[]));

    final failureOrSuccess = await _repository.getDataList();

    failureOrSuccess.fold(
      (ItemFailures l) =>
          emit(HomeState.failure(items: <ItemEntity>[], failures: l)),
      (List<ItemEntity> r) {
        r.sort((a, b) => a.orderId.compareTo(b.orderId));

        emit(HomeState.success(items: r));
      },
    );
  }
}
  // testLoadingCard() {
  //   emit(HomeState.loading(itemsPerPage: DataConfig.itemsPerPage, items: []));
  // }
