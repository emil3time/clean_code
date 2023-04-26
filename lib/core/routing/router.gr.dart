// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<HomePage>(
        routeData: routeData,
        child: HomePage(),
      );
    },
    UrlWebRoute.name: (routeData) {
      final args = routeData.argsAs<UrlWebRouteArgs>();
      return MaterialPageX<UrlWebPage>(
        routeData: routeData,
        child: UrlWebPage(
          key: args.key,
          url: args.url,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        RouteConfig(
          UrlWebRoute.name,
          path: '/url-web-page',
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [UrlWebPage]
class UrlWebRoute extends PageRouteInfo<UrlWebRouteArgs> {
  UrlWebRoute({
    Key? key,
    required String url,
  }) : super(
          UrlWebRoute.name,
          path: '/url-web-page',
          args: UrlWebRouteArgs(
            key: key,
            url: url,
          ),
        );

  static const String name = 'UrlWebRoute';
}

class UrlWebRouteArgs {
  const UrlWebRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'UrlWebRouteArgs{key: $key, url: $url}';
  }
}
