part of 'main_theme.dart';

mixin MainThemeAppBarTheme {
  AppBarTheme _appBarThemeData({
    required bool isDark,
    required IAppColor appColor,
  }) {
    return AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      foregroundColor: appColor.primary.color,
      titleTextStyle: const TextStyle().copyWith(
        color: appColor.background.onColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: appColor.primary.color,
      ),
    );
  }
}
