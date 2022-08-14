import 'package:component_library/component/atom/button/widget/loading_state_widget.dart';
import 'package:component_library/foundation/color/cl_theme_color.dart';
import 'package:component_library/utils/extension/build_context_extension.dart';
import 'package:component_library/utils/extension/theme_color_extension.dart';
import 'package:flutter/material.dart';

const _elevation = 6.0;
const _disabledElevation = 2.0;
const _focusElevation = 4.0;

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
    final buttonColor =
        (backgroundColor ?? CLThemeColor.primary).toColor(clTheme.colorPallet);
    final buttonIconColor =
        (iconColor ?? CLThemeColor.grey10).toColor(clTheme.colorPallet);

    return FloatingActionButton(
      focusColor: buttonColor,
      foregroundColor: buttonIconColor,
      hoverColor: buttonIconColor.withOpacity(0.4),
      elevation: _elevation,
      disabledElevation: _disabledElevation,
      focusElevation: _focusElevation,
      onPressed: onPressed,
      mini: mini,
      shape: const RoundedRectangleBorder(),
      child: isLoading
          ? LoadingStateWidget(color: buttonIconColor)
          : Icon(iconData),
    );
  }
}
