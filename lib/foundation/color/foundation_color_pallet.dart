import 'package:flutter/material.dart';

abstract class FoundationColorPallet {
  Color get primary;

  Color get primaryVariant;

  Color get onPrimary;

  Color get secondary;

  Color get secondaryVariant;

  Color get onSecondary;

  Color get surface;

  Color get onSurface;

  Color get background;

  Color get onBackground;

  Color get error;

  Color get onError;

  Color get warning;

  Color get info;

  Color get hint;

  Color get focus;

  Color get highlight;

  Color get grey0;

  Color get grey10;

  Color get grey20;

  Color get grey30;

  Color get grey40;

  Color get grey50;

  Color get grey60;

  Color get grey70;

  Color get grey80;

  Color get grey90;

  Color get grey100;

  Color get transparent => const Color(0x00000000);

  Color get white => const Color(0xFFE2E2E2);

  Color get black => const Color(0xFF1B1B1B);
}
