import 'package:component_library/foundation/color/cl_theme_color.dart';
import 'package:component_library/foundation/text_style/cl_theme_text_style.dart';
import 'package:component_library/utils/extension/app_theme_extension.dart';
import 'package:component_library/utils/extension/build_context_extension.dart';
import 'package:component_library/utils/extension/theme_color_extension.dart';
import 'package:component_library/utils/extension/theme_text_style_extension.dart';
import 'package:flutter/material.dart';

enum CLTextDecoration { regular, underlined }

class CLTextWidget extends StatelessWidget {
  const CLTextWidget(
    this.data, {
    required this.color,
    required this.style,
    this.decoration = CLTextDecoration.regular,
    this.textAlign = TextAlign.left,
    this.maxLine,
    this.overflow,
    this.softWarp,
    Key? key,
  }) : super(key: key);

  final String data;
  final CLThemeColor color;
  final CLThemeTextStyle style;
  final CLTextDecoration decoration;
  final TextAlign textAlign;
  final int? maxLine;
  final TextOverflow? overflow;
  final bool? softWarp;

  @override
  Widget build(BuildContext context) {
    final clTheme = context.clTheme;
    final textColor = color.toColor(clTheme.colorPallet);
    final textStyle = style.toTextStyle(clTheme.textStyle);

    return Text(
      data,
      style: textStyle.copyWith(color: textColor),
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: overflow,
      softWrap: softWarp,
    );
  }
}
