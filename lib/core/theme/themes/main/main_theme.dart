import 'package:dating_app/core/theme/iapp_color.dart';
import 'package:dating_app/core/theme/itheme.dart';
import 'package:flutter/material.dart';

part 'main_theme_app_color.dart';
part 'main_theme_text_theme.dart';
part 'main_theme_input_decoration_theme.dart';
part 'main_theme_app_bar_theme.dart';

final class MainTheme
    with MainThemeTextTheme, MainThemeInputDecorationTheme, MainThemeAppBarTheme
    implements ITheme {
  @override
  IAppColor get appColor => MainThemeAppColor();

  @override
  ThemeData get lightThemeData => _themeData(isDark: false);

  @override
  ThemeData get darkThemeData => _themeData(isDark: true);

  ThemeData _themeData({
    required bool isDark,
  }) {
    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primaryColor: appColor.primary.color,
      scaffoldBackgroundColor:
          isDark ? appColor.background.onColor : appColor.background.color,
      appBarTheme: _appBarThemeData(
        isDark: isDark,
        appColor: appColor,
      ),
      textTheme: _textThemeData(
        isDark: isDark,
        appColor: appColor,
      ),
      inputDecorationTheme: _inputDecorationThemeData(
        isDark: isDark,
        appColor: appColor,
      ),
    );
  }
}
