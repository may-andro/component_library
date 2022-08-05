import 'package:component_library/component/atom/button/cl_button_size.dart';
import 'package:component_library/component/atom/text/cl_text_widget.dart';
import 'package:component_library/foundation/color/cl_theme_color.dart';
import 'package:component_library/utils/extension/app_theme_extension.dart';
import 'package:component_library/utils/extension/build_context_extension.dart';
import 'package:component_library/utils/extension/theme_color_extension.dart';
import 'package:flutter/material.dart';

class BaseButtonWidget extends StatelessWidget {
  const BaseButtonWidget({
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.shape,
    this.size = CLButtonSize.regular,
    this.isLoading = false,
    this.elevation = 0.0,
    this.iconData,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String label;
  final CLThemeColor backgroundColor;
  final CLThemeColor textColor;
  final OutlinedBorder shape;
  final CLButtonSize size;
  final bool isLoading;
  final double elevation;
  final IconData? iconData;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final clTheme = context.clTheme;
    final color = backgroundColor.toColor(clTheme.colorPallet);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: shape,
      ).merge(
        ButtonStyle(
          elevation: MaterialStateProperty.resolveWith((states) {
            return states.contains(MaterialState.pressed) ? 0.0 : elevation;
          }),
        ),
      ),
      child: SizedBox(
        height: size.buttonHeight * context.textScaleFactor,
        child: isLoading
            ? const _LoadingStateWidget()
            : _IdleStateWidget(
                data: label,
                textColor: textColor,
                size: size,
                iconData: iconData,
              ),
      ),
    );
  }
}

class _LoadingStateWidget extends StatelessWidget {
  const _LoadingStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}

class _IdleStateWidget extends StatelessWidget {
  const _IdleStateWidget({
    required this.data,
    required this.textColor,
    required this.size,
    this.iconData,
    Key? key,
  }) : super(key: key);

  final String data;
  final CLThemeColor textColor;
  final CLButtonSize size;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (iconData != null) ...[
          _ImageWidget(
            iconData: iconData!,
            size: size,
          )
        ],
        _TextWidget(
          data: data,
          textColor: textColor,
          size: size,
        ),
      ],
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({
    required this.data,
    required this.textColor,
    required this.size,
    Key? key,
  }) : super(key: key);

  final String data;
  final CLThemeColor textColor;
  final CLButtonSize size;

  @override
  Widget build(BuildContext context) {
    return CLTextWidget(
      data,
      color: textColor,
      style: size.buttonTextStyle,
    );
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({
    required this.iconData,
    required this.size,
    Key? key,
  }) : super(key: key);

  final IconData iconData;
  final CLButtonSize size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: size.iconSize * context.textScaleFactor,
    );
  }
}
