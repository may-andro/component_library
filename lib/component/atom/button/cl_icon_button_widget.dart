import 'package:component_library/component/atom/button/cl_button_size.dart';
import 'package:component_library/component_library.dart';
import 'package:component_library/utils/extension/app_theme_extension.dart';
import 'package:component_library/utils/extension/build_context_extension.dart';
import 'package:component_library/utils/extension/theme_color_extension.dart';
import 'package:flutter/material.dart';

class CLIconButtonWidget extends StatelessWidget {
  const CLIconButtonWidget({
    required this.iconData,
    this.isLoading = false,
    this.size = CLButtonSize.regular,
    this.onPressed,
    this.backgroundColor,
    this.iconColor,
    Key? key,
  }) : super(key: key);

  final IconData iconData;
  final bool isLoading;
  final CLButtonSize size;
  final VoidCallback? onPressed;
  final CLThemeColor? backgroundColor;
  final CLThemeColor? iconColor;

  @override
  Widget build(BuildContext context) {
    final clTheme = context.clTheme;
    final iconSize = size.iconButtonSize * context.textScaleFactor;
    final buttonColor = (backgroundColor ?? CLThemeColor.secondary).toColor(clTheme.colorPallet);
    final buttonIconColor = (iconColor ?? CLThemeColor.secondary).toColor(clTheme.colorPallet);

    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Material(
        color: buttonColor,
        borderRadius: clTheme.dimenRadius.buttonRadius,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: isLoading
                ? const _LoadingWidget()
                : Icon(
                    iconData,
                    color: buttonIconColor,
                  ),
          ),
        ),
      ),
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
