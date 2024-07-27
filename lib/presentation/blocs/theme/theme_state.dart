part of 'theme_cubit.dart';

final class ThemeState extends Equatable {
  const ThemeState({
    this.themeType = ThemesEnum.main,
    this.themeMode = ThemeMode.system,
  });

  final ThemesEnum themeType;
  final ThemeMode themeMode;

  @override
  List<Object?> get props => [themeType, themeMode];

  ThemeState copyWith({
    ThemesEnum? themeType,
    ThemeMode? themeMode,
  }) {
    return ThemeState(
      themeType: themeType ?? this.themeType,
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
