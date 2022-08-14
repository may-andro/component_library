import 'package:component_library/foundation/color/foundation_color_pallet.dart';
import 'package:component_library/foundation/color/cl_theme_color.dart';
import 'package:flutter/material.dart';

extension ThemeColorExtension on CLThemeColor {
  Color toColor(final FoundationColorPallet colorPallet) {
    switch (this) {
      case CLThemeColor.primary:
        return colorPallet.primary;
      case CLThemeColor.primaryVariant:
        return colorPallet.primaryVariant;
      case CLThemeColor.secondary:
        return colorPallet.secondary;
      case CLThemeColor.secondaryVariant:
        return colorPallet.secondaryVariant;
      case CLThemeColor.background:
        return colorPallet.background;
      case CLThemeColor.error:
        return colorPallet.error;
      case CLThemeColor.warning:
        return colorPallet.warning;
      case CLThemeColor.info:
        return colorPallet.info;
      case CLThemeColor.hint:
        return colorPallet.hint;
      case CLThemeColor.highlight:
        return colorPallet.highlight;
      case CLThemeColor.focus:
        return colorPallet.focus;
      case CLThemeColor.grey0:
        return colorPallet.grey0;
      case CLThemeColor.grey10:
        return colorPallet.grey10;
      case CLThemeColor.grey20:
        return colorPallet.grey20;
      case CLThemeColor.grey30:
        return colorPallet.grey30;
      case CLThemeColor.grey40:
        return colorPallet.grey40;
      case CLThemeColor.grey50:
        return colorPallet.grey50;
      case CLThemeColor.grey60:
        return colorPallet.grey60;
      case CLThemeColor.grey70:
        return colorPallet.grey70;
      case CLThemeColor.grey80:
        return colorPallet.grey80;
      case CLThemeColor.grey90:
        return colorPallet.grey90;
      case CLThemeColor.grey100:
        return colorPallet.grey100;
      case CLThemeColor.transparent:
        return colorPallet.transparent;
      case CLThemeColor.white:
        return colorPallet.white;
      case CLThemeColor.black:
        return colorPallet.black;
    }
  }
}
