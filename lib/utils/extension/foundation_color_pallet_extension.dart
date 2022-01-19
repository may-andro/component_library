import 'package:component_library/foundation/color/foundation_color_pallet.dart';
import 'package:flutter/material.dart';

extension FoundationColorPalletExtension on FoundationColorPallet {
  ColorScheme getColorScheme(final Brightness brightness) {
    return ColorScheme(
      primary: primary,
      primaryVariant: primaryVariant,
      secondary: secondary,
      secondaryVariant: secondaryVariant,
      surface: surface,
      background: background,
      error: error,
      onPrimary: onPrimary,
      onSecondary: onSecondary,
      onSurface: onSurface,
      onBackground: onBackground,
      onError: onError,
      brightness: brightness,
    );
  }
}
