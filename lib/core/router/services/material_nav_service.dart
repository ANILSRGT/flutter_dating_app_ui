import 'package:dating_app/core/constants/enums/routes_enum.dart';
import 'package:dating_app/core/router/inav_service.dart';
import 'package:flutter/material.dart';

final class MaterialNavService implements INavService {
  const MaterialNavService({
    required this.navigatorKey,
  });

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  void goBack<T extends Object?>({T? result}) {
    return navigatorKey.currentState?.pop(result);
  }

  @override
  void goBackFirst() {
    return navigatorKey.currentState?.popUntil((route) => route.isFirst || !(route.navigator?.canPop()??false));
  }

  @override
  Future<T?> goTo<T extends Object?>(
    RoutesEnum route, {
    Object? arguments,
  }) async {
    return navigatorKey.currentState?.pushNamed(
      route.path,
      arguments: arguments,
    );
  }

  @override
  Future<T?> replaceAll<T extends Object?>(
    RoutesEnum route, {
    Object? arguments,
  }) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
      route.path,
      (route) => false,
      arguments: arguments,
    );
  }

  @override
  Future<T?> replaceLast<T extends Object?>(
    RoutesEnum route, {
    Object? arguments,
  }) async {
    return navigatorKey.currentState?.pushReplacementNamed(
      route.path,
      arguments: arguments,
    );
  }
}
