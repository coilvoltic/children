import 'package:flutter/material.dart';

enum MainTheme {
  dark,
  light
}

class Constants {

  static const int headerRatio   = 1;
  static const int equationRatio = 4;
  static const int choicesRatio  = 2; 

  static const int sumOfRatios = headerRatio + equationRatio + choicesRatio;

  static const int animationDurationInMs = 200;

}

class Background
{
  Color light = const Color(0xFFE7ECEF);
  Color dark  = const Color(0xFF2E3239);

  Color get getLightColor => light;
  Color get getDarkColor  => dark;
}

class TileShadow
{
  Color light = const Color(0xFFA7A9AF);
  Color dark  = const Color(0xFF23262A);

  Color get getLightColor => light;
  Color get getDarkColor  => dark;
}

class TileBrightness
{
  Color light = Colors.white;
  Color dark  = const Color(0xFF35393F);
  
  Color get getLightColor => light;
  Color get getDarkColor  => dark;
}

class ThemeColors
{
  static Background     background     = Background();
  static TileShadow     tileShadow     = TileShadow();
  static TileBrightness tileBrightness = TileBrightness();
}
