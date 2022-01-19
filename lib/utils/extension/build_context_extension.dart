import 'package:component_library/theme/cl_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension BuildContextExtension on BuildContext {

  CLTheme get clTheme => watch<CLTheme>();

  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;

  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}
