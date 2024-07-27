import 'package:dating_app/core/constants/enums/routes_enum.dart';
import 'package:dating_app/core/router/inav_service.dart';
import 'package:flutter/material.dart';

final class AppRouter {
  const AppRouter({
    required INavService navService,
  }) : _navService = navService;

  final INavService _navService;

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  String initialRoute(bool isFirstTime) =>
      isFirstTime ? RoutesEnum.onboarding.path : RoutesEnum.authentication.path;

  Route<T> onGenerateRoute<T>(RouteSettings settings) {
    final route = RoutesEnum.values.firstWhere(
      (route) => route.path == settings.name,
      orElse: () => RoutesEnum.notFound,
    );

    return _goToPage<T>(route: route, settings: settings);
  }

  MaterialPageRoute<T> _goToPage<T>({
    required RoutesEnum route,
    required RouteSettings settings,
  }) {
    return MaterialPageRoute<T>(
      settings: settings,
      builder: (_) {
        return route.page;
      },
    );
  }

  Future<T?> goTo<T extends Object?>(RoutesEnum route, {Object? arguments}) =>
      _navService.goTo<T>(route, arguments: arguments);

  void goBack<T extends Object?>({T? result}) =>
      _navService.goBack<T>(result: result);

  Future<T?> replaceLast<T extends Object?>(
    RoutesEnum route, {
    Object? arguments,
  }) =>
      _navService.replaceLast(route, arguments: arguments);

  Future<T?> replaceAll<T extends Object?>(
    RoutesEnum route, {
    Object? arguments,
  }) =>
      _navService.replaceAll(route, arguments: arguments);

  void goBackFirst() => _navService.goBackFirst();
}
