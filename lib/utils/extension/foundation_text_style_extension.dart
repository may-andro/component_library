import 'package:component_library/foundation/text_style/foundation_text_style.dart';
import 'package:flutter/material.dart';

extension FoundationtextStyleExtension on FoundationTextStyle {
  TextTheme get textTheme {
    return TextTheme(
      headline1: h1,
      headline2: h2,
      headline3: h3,
      headline4: h4,
      headline5: h5,
      headline6: h6,
      subtitle1: subtitle1,
      subtitle2: subtitle2,
      bodyText1: body1,
      bodyText2: body2,
      button: button1,
      caption: caption,
      overline: overline,
    );
  }
}
