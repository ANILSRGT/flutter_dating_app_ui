import 'package:flutter/material.dart';

abstract interface class IAppColor {
  ColorWithOn get primary;
  ColorWithOn get secondary;
  ColorWithOn get accent;
  ColorWithOn get background;
  ColorWithOn get grey;
  ColorWithOn get black;
  ColorWithOn get white;
  ColorWithOn get error;
  ColorWithOn get success;
  ColorWithOn get warning;
  ColorWithOn get info;
}

final class ColorWithOn {
  const ColorWithOn({
    required this.color,
    required this.onColor,
  });

  final Color color;
  final Color onColor;
}
