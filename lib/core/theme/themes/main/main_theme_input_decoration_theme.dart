part of 'main_theme.dart';

mixin MainThemeInputDecorationTheme {
  InputDecorationTheme _inputDecorationThemeData({
    required bool isDark,
    required IAppColor appColor,
  }) {
    return InputDecorationTheme(
      filled: true,
      fillColor:
          isDark ? appColor.background.onColor : appColor.background.color,
      iconColor: appColor.primary.color,
      hintStyle: const TextStyle().copyWith(
        color: isDark ? appColor.grey.color : appColor.grey.color,
      ),
      labelStyle: const TextStyle().copyWith(
        color: appColor.primary.color,
      ),
      errorStyle: const TextStyle().copyWith(
        color: appColor.error.color,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColor.background.onColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColor.primary.color,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColor.error.color,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColor.error.color,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: appColor.grey.color,
        ),
      ),
    );
  }
}
