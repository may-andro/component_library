import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:component_library/design_system/design_system.dart';
import 'package:component_library/theme/cl_theme.dart';
import 'package:component_library/utils/extension/build_context_extension.dart';
import 'package:component_library/utils/extension/design_system_extension.dart';
import 'package:component_library/utils/extension/foundation_color_pallet_extension.dart';
import 'package:component_library/utils/extension/foundation_text_style_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CLThemeProvider extends StatelessWidget {
  const CLThemeProvider({
    required this.designSystem,
    required this.child,
    Key? key,
  }) : super(key: key);

  final DesignSystem designSystem;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final brightness = context.platformBrightness;
    final colorScheme = designSystem.colorBrightnessMapper.getColorPallet(brightness).getColorScheme(brightness);
    final textTheme = designSystem.textStyle.textTheme;
    final themeData = ThemeData(
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: textTheme,
    );
    final clTheme = CLTheme(
      designSystem: designSystem,
      brightness: brightness,
      isIOS: context.isIOS,
      windowType: getWindowType(context),
    );

    return AnimatedTheme(
      data: themeData,
      child: Provider<CLTheme>.value(
        value: clTheme,
        child: child,
      ),
    );
  }
}
