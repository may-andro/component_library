import 'package:component_library/foundation/color/cl_theme_color.dart';
import 'package:component_library/utils/extension/app_theme_extension.dart';
import 'package:component_library/utils/extension/build_context_extension.dart';
import 'package:component_library/utils/extension/theme_color_extension.dart';
import 'package:flutter/material.dart';

class CLFabWidget extends StatelessWidget {
  const CLFabWidget({
    required this.iconData,
    this.isLoading = false,
    this.mini = false,
    this.onPressed,
    this.backgroundColor,
    this.iconColor,
    Key? key,
  }) : super(key: key);

  final IconData iconData;
  final bool isLoading;
  final VoidCallback? onPressed;
  final CLThemeColor? backgroundColor;
  final CLThemeColor? iconColor;
  final bool mini;

  @override
  Widget build(BuildContext context) {
    final clTheme = context.clTheme;
    final buttonColor = (backgroundColor ?? CLThemeColor.secondary).toColor(clTheme.colorPallet);
    final buttonIconColor = (iconColor ?? CLThemeColor.secondary).toColor(clTheme.colorPallet);

    return FloatingActionButton(
      focusColor: buttonColor,
      foregroundColor: buttonIconColor,
      hoverColor: buttonIconColor.withOpacity(0.4),
      elevation: 6,
      disabledElevation: 2,
      focusElevation: 5,
      onPressed: onPressed,
      mini: mini,
      shape: const RoundedRectangleBorder(),
      child: Icon(
        iconData,
      ),
    );
  }
}
