import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:component_library/theme/cl_theme.dart';
import 'package:component_library/theme/cl_theme_widget.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  CLTheme get clTheme => CLThemeWidget.of(this);

  AdaptiveWindowType get adaptiveWindowType => getWindowType(this);

  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;

  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  T brightnessMapper<T>({required T light, required T dark}) {
    return platformBrightness == Brightness.light ? light : dark;
  }
}
