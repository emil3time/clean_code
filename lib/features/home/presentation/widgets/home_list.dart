// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:

import 'package:future_mind_task/features/home/presentation/widgets/custom_card.dart';
import 'package:future_mind_task/theme/utils/data_config.dart';
import 'package:future_mind_task/theme/widgets/failure_tile.dart';
import '../../application/cubit/home_cubit.dart';
import 'loading_card.dart';

class HomeList extends StatelessWidget {
  final HomeState homeState;

  const HomeList({super.key, required this.homeState});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 40.0.h,
      ),
      itemCount: homeState.map(
          initial: (_) => 0,
          loading: (_) => DataConfig.itemsPerPage,
          success: (_) => _.items.length,
          failure: (_) => _.items.length + 1),
      itemBuilder: (context, index) => homeState.map(
        initial: (_) => SizedBox.shrink(),
        loading: (_) => LoadingCard(),
        success: (_) => CustomCard(
          item: _.items[index],
        ),
        failure: (_) {
          return FailureTile(failures: _.failures);
        },
      ),
    );
  }
}
