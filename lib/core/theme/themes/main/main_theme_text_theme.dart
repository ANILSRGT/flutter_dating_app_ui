part of 'main_theme.dart';

mixin MainThemeTextTheme {
  TextTheme _textThemeData({
    required bool isDark,
    required IAppColor appColor,
  }) {
    return const TextTheme(
      //~ Display
      displaySmall: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
      ),
      displayLarge: TextStyle(
        fontSize: 64,
        fontWeight: FontWeight.bold,
      ),
      //~ Headline
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      //~ Title
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      //~ Body
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      //~ Label
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ).apply(
      bodyColor:
          isDark ? appColor.background.color : appColor.background.onColor,
      displayColor:
          isDark ? appColor.background.color : appColor.background.onColor,
      fontFamily: 'Poppins',
    );
  }
}
