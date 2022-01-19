import 'package:component_library/foundation/text_style/foundation_text_style.dart';
import 'package:component_library/foundation/text_style/cl_theme_text_style.dart';
import 'package:flutter/material.dart';

extension ThemeTextStyleExtension on CLThemeTextStyle {
  TextStyle toTextStyle(final FoundationTextStyle foundationTextStyle) {
    switch (this) {
      case CLThemeTextStyle.body1:
        return foundationTextStyle.body1;
      case CLThemeTextStyle.body2:
        return foundationTextStyle.body2;
      case CLThemeTextStyle.button1:
        return foundationTextStyle.button1;
      case CLThemeTextStyle.button2:
        return foundationTextStyle.button2;
      case CLThemeTextStyle.h1:
        return foundationTextStyle.h1;
      case CLThemeTextStyle.h2:
        return foundationTextStyle.h2;
      case CLThemeTextStyle.h3:
        return foundationTextStyle.h3;
      case CLThemeTextStyle.h4:
        return foundationTextStyle.h4;
      case CLThemeTextStyle.h5:
        return foundationTextStyle.h5;
      case CLThemeTextStyle.h6:
        return foundationTextStyle.h6;
      case CLThemeTextStyle.caption:
        return foundationTextStyle.caption;
      case CLThemeTextStyle.overLine:
        return foundationTextStyle.overline;
      case CLThemeTextStyle.subtitle1:
        return foundationTextStyle.subtitle1;
      case CLThemeTextStyle.subtitle2:
        return foundationTextStyle.subtitle2;
    }
  }
}
