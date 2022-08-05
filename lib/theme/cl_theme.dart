import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:component_library/component_library.dart';
import 'package:component_library/foundation/color/foundation_color_pallet.dart';
import 'package:component_library/foundation/text_style/foundation_text_style.dart';
import 'package:component_library/utils/extension/design_system_extension.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cl_theme.freezed.dart';

num _grid = 8.0;

@freezed
class CLTheme with _$CLTheme {
  factory CLTheme({
    required final DesignSystem designSystem,
    required final Brightness brightness,
    required final bool isIOS,
    required final AdaptiveWindowType adaptiveWindowType,
  }) = _CLTheme;

  CLTheme._() {
    _grid = _appGrid;
  }

  num get _appGrid {
    switch (adaptiveWindowType) {
      case AdaptiveWindowType.xsmall:
        return 4;
      case AdaptiveWindowType.small:
        return 6;
      case AdaptiveWindowType.medium:
        return 8;
      case AdaptiveWindowType.large:
        return 12;
      case AdaptiveWindowType.xlarge:
        return 16;
      default:
        return 8;
    }
  }

  num grid([final double factor = 0]) => factor * _grid;

  FoundationColorPallet get colorPallet =>
      designSystem.colorBrightnessMapper.getColorPallet(brightness);

  FoundationTextStyle get textStyle => designSystem.textStyle;
}
