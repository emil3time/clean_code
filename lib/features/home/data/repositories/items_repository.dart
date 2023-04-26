// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../core/error/item_failures.dart';
import '../../domain/entities/item_entity.dart';

abstract class ItemsRepository {
  Future<Either<ItemFailures, List<ItemEntity>>> getDataList();
}
