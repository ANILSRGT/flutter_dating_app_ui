import 'package:dating_app/core/router/app_router.dart';
import 'package:dating_app/core/router/inav_service.dart';
import 'package:dating_app/core/router/services/material_nav_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final class Injection {
  const Injection._();

  static final GetIt _getIt = GetIt.instance;

  static Future<void> inject() async {
    _getIt
      ..registerSingleton<GlobalKey<NavigatorState>>(AppRouter.navigatorKey)
      ..registerSingleton<INavService>(
        MaterialNavService(navigatorKey: _getIt()),
      )
      ..registerSingleton<AppRouter>(AppRouter(navService: _getIt()));
  }

  static T read<T extends Object>() => _getIt<T>();
}
