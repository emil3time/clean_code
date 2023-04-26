// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'core/routing/router.dart';

import 'features/home/application/cubit/home_cubit.dart';
import 'locator.dart';
import 'theme/utils/screen_sizes.dart';

class App extends StatefulWidget {
  const App({super.key});

  static final AppRouter appRouter = AppRouter();

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => MediaQuery(
        data: MediaQueryData.fromWindow(WidgetsBinding.instance.window),
        child: ScreenUtilInit(
          designSize: ScreenSizes(constraints: constraints).getScreenSize(),
          minTextAdapt: true,
          builder: (BuildContext context, Widget? _) {
            return MultiBlocProvider(
                providers: [
                  BlocProvider<HomeCubit>(
                    create: (context) => sl.get<HomeCubit>(),
                  ),
                ],
                child: MaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    routerDelegate: App.appRouter.delegate(),
                    routeInformationParser: App.appRouter.defaultRouteParser(),
                    onGenerateTitle: (context) =>
                        AppLocalizations.of(context)?.recrutmentTask ?? '',
                    supportedLocales: AppLocalizations.supportedLocales,
                    localizationsDelegates:
                        AppLocalizations.localizationsDelegates,
                    theme: _manageThemeData()));
          },
        ),
      ),
    );
  }

  ThemeData _manageThemeData() {
    return ThemeData(
      primaryColor: Colors.grey.shade50,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 16.sp),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.grey.shade50,
      ),
    );
  }
}
