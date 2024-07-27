import 'package:dating_app/core/constants/localization/locale_keys.g.dart';
import 'package:dating_app/core/extensions/string/string_ext.dart';
import 'package:dating_app/core/router/app_router.dart';
import 'package:dating_app/injection.dart';
import 'package:dating_app/presentation/blocs/theme/theme_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDev extends StatelessWidget {
  const AppDev({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<ThemeCubit>(
        create: (_) => ThemeCubit(),
        child: Builder(
          builder: (ctx) {
            final themeState = ctx.watch<ThemeCubit>().state;
            final navKey = Injection.read<GlobalKey<NavigatorState>>();
            final appRouter = Injection.read<AppRouter>();
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: LocaleKeys.appTitle.extApp.tranlation.tr,
              theme: themeState.themeType.theme.lightThemeData,
              darkTheme: themeState.themeType.theme.darkThemeData,
              themeMode: themeState.themeMode,
              locale: context.locale,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              navigatorKey: navKey,
              onGenerateRoute: appRouter.onGenerateRoute,
              initialRoute: appRouter.initialRoute(true),
            );
          },
        ),
      ),
    );
  }
}
