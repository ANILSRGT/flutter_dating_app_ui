import 'package:dating_app/app.dart';
import 'package:dating_app/app_dev.dart';
import 'package:dating_app/core/localization/app_locales_enum.dart';
import 'package:dating_app/injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await EasyLocalization.ensureInitialized();
  await Injection.inject();

  //! Remove this line to display the native splash screen
  FlutterNativeSplash.remove();
  runApp(
    EasyLocalization(
      supportedLocales: AppLocalesEnum.values.map((e) => e.locale).toList(),
      path: 'assets/translations',
      fallbackLocale: AppLocalesEnum.defaultLocale.locale,
      child: kDebugMode ? const AppDev() : const App(),
    ),
  );
}
