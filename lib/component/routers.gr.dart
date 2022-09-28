// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'routers.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    DayRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const DayPage(),
      );
    },
    NightRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const NightPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: MainRoute.name,
              redirectTo: 'welcome',
              fullMatch: true,
            ),
            RouteConfig(
              HomeRoute.name,
              path: 'welcome',
              parent: MainRoute.name,
            ),
            RouteConfig(
              DayRoute.name,
              path: 'day',
              parent: MainRoute.name,
            ),
            RouteConfig(
              NightRoute.name,
              path: 'night',
              parent: MainRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'welcome',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [DayPage]
class DayRoute extends PageRouteInfo<void> {
  const DayRoute()
      : super(
          DayRoute.name,
          path: 'day',
        );

  static const String name = 'DayRoute';
}

/// generated route for
/// [NightPage]
class NightRoute extends PageRouteInfo<void> {
  const NightRoute()
      : super(
          NightRoute.name,
          path: 'night',
        );

  static const String name = 'NightRoute';
}
