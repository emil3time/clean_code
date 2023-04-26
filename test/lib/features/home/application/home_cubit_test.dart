// Package imports:
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_mind_task/features/home/application/cubit/home_cubit.dart';

import 'package:mocktail/mocktail.dart';

// Project imports:
import 'package:future_mind_task/core/error/item_failures.dart';
import 'package:future_mind_task/features/home/data/repositories/items_repository.dart';
import 'package:future_mind_task/features/home/domain/entities/item_entity.dart';

import 'package:future_mind_task/theme/utils/data_config.dart';

class MockItemsRepository extends Mock implements ItemsRepository {}

void main() {
  late MockItemsRepository repositoryMock;
  late HomeCubit homeCubit;

  setUp(() {
    repositoryMock = MockItemsRepository();
    homeCubit = HomeCubit(repositoryMock);
  });

  tearDown(() {
    homeCubit.close();
  });

  group('HomeCubit', () {
    test(' HomeState.initial  has an empty list of items', () {
      final cubit = homeCubit;
      expect(cubit.state.items.isEmpty, isTrue);
    });

    blocTest<HomeCubit, HomeState>(
      'the HomeState.success status should be emitted after successfully fetching the list of elements',
      build: () {
        when(() => repositoryMock.getDataList())
            .thenAnswer((_) async => Right(<ItemEntity>[]));
        return homeCubit;
      },
      act: (cubit) => cubit.getList(),
      expect: () => [
        HomeState.loading(
          itemsPerPage: DataConfig.itemsPerPage,
          items: <ItemEntity>[],
        ),
        HomeState.success(items: <ItemEntity>[]),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'HomeState.failure  should be emitted after an unsuccessful retrieval of the list of elements',
      build: () {
        when(() => repositoryMock.getDataList())
            .thenAnswer((_) async => Left(ItemFailures.noConnection()));
        return homeCubit;
      },
      act: (cubit) => cubit.getList(),
      expect: () => [
        HomeState.loading(
          itemsPerPage: DataConfig.itemsPerPage,
          items: <ItemEntity>[],
        ),
        HomeState.failure(
          items: <ItemEntity>[],
          failures: ItemFailures.noConnection(),
        ),
      ],
    );
  });
}
