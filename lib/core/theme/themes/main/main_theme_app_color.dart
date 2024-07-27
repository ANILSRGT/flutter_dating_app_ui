part of 'main_theme.dart';

class MainThemeAppColor implements IAppColor {
  @override
  ColorWithOn get primary => const ColorWithOn(
        color: Color(0xffe94057),
        onColor: Color(0xfffbfbfb),
      );

  @override
  ColorWithOn get secondary => const ColorWithOn(
        color: Color(0xff8a2387),
        onColor: Color(0xfffbfbfb),
      );

  @override
  ColorWithOn get accent => const ColorWithOn(
        color: Color(0xfff37221),
        onColor: Color(0xfffbfbfb),
      );

  @override
  ColorWithOn get background => const ColorWithOn(
        color: Color(0xfffbfbfb),
        onColor: Color(0xff1c1c1c),
      );

  @override
  ColorWithOn get black => const ColorWithOn(
        color: Color(0xff1c1c1c),
        onColor: Color(0xfffbfbfb),
      );

  @override
  ColorWithOn get white => const ColorWithOn(
        color: Color(0xfffbfbfb),
        onColor: Color(0xff1c1c1c),
      );

  @override
  ColorWithOn get grey => const ColorWithOn(
        color: Color(0xffa4a4a4),
        onColor: Color(0xff1c1c1c),
      );

  @override
  ColorWithOn get error => const ColorWithOn(
        color: Color(0xffaa2424),
        onColor: Color(0xfffbfbfb),
      );

  @override
  ColorWithOn get success => const ColorWithOn(
        color: Color(0xff2e7d32),
        onColor: Color(0xfffbfbfb),
      );

  @override
  ColorWithOn get info => const ColorWithOn(
        color: Color(0xff1976d2),
        onColor: Color(0xfffbfbfb),
      );

  @override
  ColorWithOn get warning => const ColorWithOn(
        color: Color(0xfff5c800),
        onColor: Color(0xff1c1c1c),
      );
}
