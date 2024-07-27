import 'package:bloc/bloc.dart';
import 'package:dating_app/core/theme/themes_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());

  void changeTheme(ThemesEnum themeType) {
    emit(state.copyWith(themeType: themeType));
  }

  void changeThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }
}
