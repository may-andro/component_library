import 'package:component_library/component/atom/button/cl_button_size.dart';
import 'package:component_library/component/atom/button/widget/base_button_widget.dart';
import 'package:component_library/foundation/color/cl_theme_color.dart';
import 'package:component_library/theme/cl_theme.dart';
import 'package:component_library/utils/extension/app_theme_extension.dart';
import 'package:component_library/utils/extension/build_context_extension.dart';
import 'package:flutter/material.dart';

enum CLButtonStyle { elevated, filled, toned, outlined, ghost }

extension CLButtonStyleExtenstion on CLButtonStyle {
  double get elevation {
    switch (this) {
      case CLButtonStyle.elevated:
        return 2.0;
      case CLButtonStyle.filled:
        return 0.0;
      case CLButtonStyle.toned:
        return 0.0;
      case CLButtonStyle.outlined:
        return 0.0;
      case CLButtonStyle.ghost:
        return 0.0;
    }
  }

  CLThemeColor get backgroundColor {
    switch (this) {
      case CLButtonStyle.elevated:
        return CLThemeColor.primary;
      case CLButtonStyle.filled:
        return CLThemeColor.primary;
      case CLButtonStyle.toned:
        return CLThemeColor.primaryVariant;
      case CLButtonStyle.outlined:
        return CLThemeColor.transparent;
      case CLButtonStyle.ghost:
        return CLThemeColor.transparent;
    }
  }

  CLThemeColor get textColor {
    switch (this) {
      case CLButtonStyle.elevated:
        return CLThemeColor.grey10;
      case CLButtonStyle.filled:
        return CLThemeColor.grey10;
      case CLButtonStyle.toned:
        return CLThemeColor.grey10;
      case CLButtonStyle.outlined:
        return CLThemeColor.grey90;
      case CLButtonStyle.ghost:
        return CLThemeColor.grey90;
    }
  }

  OutlinedBorder getShape(CLTheme clTheme) {
    switch (this) {
      case CLButtonStyle.elevated:
        return RoundedRectangleBorder(
          borderRadius: clTheme.dimenRadius.buttonRadius,
        );
      case CLButtonStyle.filled:
        return RoundedRectangleBorder(
          borderRadius: clTheme.dimenRadius.buttonRadius,
        );
      case CLButtonStyle.toned:
        return RoundedRectangleBorder(
          borderRadius: clTheme.dimenRadius.buttonRadius,
        );
      case CLButtonStyle.outlined:
        return RoundedRectangleBorder(
          borderRadius: clTheme.dimenRadius.buttonRadius,
          side: BorderSide(
            color: clTheme.colorPallet.grey90,
            width: 2.0,
          ),
        );
      case CLButtonStyle.ghost:
        return RoundedRectangleBorder(
          borderRadius: clTheme.dimenRadius.buttonRadius,
          side: BorderSide(
            color: clTheme.colorPallet.transparent,
            width: 0.0,
          ),
        );
    }
  }
}

class CLButtonWidget extends StatelessWidget {
  const CLButtonWidget({
    required this.label,
    required this.style,
    this.size = CLButtonSize.regular,
    this.isLoading = false,
    this.iconData,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String label;
  final CLButtonStyle style;
  final IconData? iconData;
  final CLButtonSize size;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final clTheme = context.clTheme;

    return BaseButtonWidget(
      label: label,
      iconData: iconData,
      size: size,
      onPressed: onPressed,
      isLoading: isLoading,
      backgroundColor: style.backgroundColor,
      textColor: style.textColor,
      shape: style.getShape(clTheme),
      elevation: style.elevation,
    );
  }
}
