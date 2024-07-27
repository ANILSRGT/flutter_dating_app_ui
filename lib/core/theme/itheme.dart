import 'package:dating_app/core/theme/iapp_color.dart';
import 'package:flutter/material.dart';

abstract interface class ITheme {
  IAppColor get appColor;
  ThemeData get lightThemeData;
  ThemeData get darkThemeData;
}
