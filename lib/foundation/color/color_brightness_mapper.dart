import 'package:component_library/foundation/color/foundation_color_pallet.dart';
import 'package:component_library/utils/extension/brightness_extension.dart';
import 'package:flutter/material.dart';

abstract class ColorBrightnessMapper {
  FoundationColorPallet get lightColorPallet;

  FoundationColorPallet get darkColorPallet;

  FoundationColorPallet getColorPallet(final Brightness brightness) {
    if (brightness.isLightMode) {
      return lightColorPallet;
    }

    return darkColorPallet;
  }
}
