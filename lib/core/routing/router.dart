// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:future_mind_task/features/home/presentation/pages/url_web_page.dart';
import '../../features/home/presentation/pages/home_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[
    AutoRoute<HomePage>(page: HomePage, initial: true),
    AutoRoute<UrlWebPage>(page: UrlWebPage),
  ],
)
class AppRouter extends _$AppRouter {}
