import 'package:component_library/foundation/color/color_brightness_mapper.dart';
import 'package:component_library/foundation/color/foundation_color_pallet.dart';
import 'package:flutter/material.dart';

extension BrightnessExtension on Brightness {
  FoundationColorPallet getColorPallet(final ColorBrightnessMapper colorBrightnessMapper) =>
      colorBrightnessMapper.getColorPallet(this);

  bool get isDarkMode => this == Brightness.dark;

  bool get isLightMode => this == Brightness.light;
}
