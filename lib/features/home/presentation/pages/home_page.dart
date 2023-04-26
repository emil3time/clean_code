// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:future_mind_task/features/home/presentation/widgets/home_list.dart';
import 'package:future_mind_task/theme/styles/app_text_styles.dart';
import 'package:future_mind_task/theme/styles/main_consts.dart';

import '../../application/cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.microtask(() => context.read<HomeCubit>().getList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.recrutmentTask,
          style: AppTextStyle.antonTextStyle,
        ),
        elevation: 0.h,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10.h, top: 10.h, right: 30.w),
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => SizedBox.shrink(),
                  success: (_) => InkWell(
                    onTap: () async {
                      await context.read<HomeCubit>().getList();
                    },
                    child: Icon(
                      Icons.refresh,
                      size: 40.w,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: MainConsts.horizontalPadding.w),
        child: Column(
          children: <Widget>[
            Expanded(
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return HomeList(
                    homeState: state,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
