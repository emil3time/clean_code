// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:future_mind_task/core/error/network_exceptions.dart';
import 'package:future_mind_task/features/home/domain/entities/item_entity.dart';
import '../../../../core/error/item_failures.dart';
import '../../domain/entities/mapper/item_mapper.dart';
import '../data_sources/remote_data_source.dart';
import 'items_repository.dart';

class ItemsRepositoryImpl implements ItemsRepository {
  final RemoteDataSource _itemDataSource;

  ItemsRepositoryImpl(
    this._itemDataSource,
  );

  @override
  Future<Either<ItemFailures, List<ItemEntity>>> getDataList() async {
    try {
      final items = await _itemDataSource.getData();

      return right(items.map((dto) => ItemMapper.fromDTO(dto)).toList());
    } on NoConnectionException catch (_) {
      return left(ItemFailures.noConnection());
    } on RestApiException catch (e) {
      return left(ItemFailures.api(e.errorCode));
    }
  }
}
