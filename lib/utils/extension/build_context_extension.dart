import 'package:component_library/theme/cl_theme.dart';
import 'package:component_library/theme/cl_theme_widget.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  CLTheme get clTheme => CLThemeWidget.of(this);

  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;

  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}
