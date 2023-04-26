// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:

import '../../core/error/item_failures.dart';
import '../../features/home/application/cubit/home_cubit.dart';

class FailureTile extends StatelessWidget {
  final ItemFailures failures;

  const FailureTile({
    required this.failures,
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return ListTileTheme(
      iconColor: Theme.of(context).colorScheme.onError,
      textColor: Theme.of(context).colorScheme.onError,
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 8.h,
        ),
        color: Theme.of(context).colorScheme.error,
        child: ListTile(
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(Icons.error),
          ),
          title: Text(
            AppLocalizations.of(context)!.error,
          ),
          subtitle: Text(
            failures.map(
              api: (value) => value.errorCode.toString(),
              noConnection: (_) => AppLocalizations.of(context)!.noConnection,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.restart_alt),
            onPressed: () async {
              await context.read<HomeCubit>().getList();
            },
          ),
        ),
      ),
    );
  }
}
