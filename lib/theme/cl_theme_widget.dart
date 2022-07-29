import 'package:component_library/theme/cl_theme.dart';
import 'package:component_library/utils/extension/build_context_extension.dart';
import 'package:component_library/utils/extension/design_system_extension.dart';
import 'package:component_library/utils/extension/foundation_color_pallet_extension.dart';
import 'package:component_library/utils/extension/foundation_text_style_extension.dart';
import 'package:flutter/material.dart';

class CLThemeWidget extends InheritedWidget {
  CLThemeWidget({
    required this.clTheme,
    required Widget child,
    Key? key,
  }) : super(key: key, child: _ThemeWidget(clTheme: clTheme, child: child));

  final CLTheme clTheme;

  @override
  bool updateShouldNotify(covariant CLThemeWidget oldWidget) {
    return clTheme != oldWidget.clTheme;
  }

  static CLTheme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CLThemeWidget>()!.clTheme;
  }
}

class _ThemeWidget extends StatelessWidget {
  const _ThemeWidget({
    required this.clTheme,
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final CLTheme clTheme;

  @override
  Widget build(BuildContext context) {
    final brightness = context.platformBrightness;
    final colorScheme = clTheme.designSystem.colorBrightnessMapper
        .getColorPallet(brightness)
        .getColorScheme(brightness);
    final textTheme = clTheme.designSystem.textStyle.textTheme;
    final themeData = ThemeData(
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: textTheme,
    );

    return AnimatedTheme(
      data: themeData,
      child: child,
    );
  }
}
