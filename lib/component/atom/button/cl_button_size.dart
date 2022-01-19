import 'package:component_library/foundation/text_style/cl_theme_text_style.dart';

enum CLButtonSize { small, regular, large }

extension CLButtonSizeExtension on CLButtonSize {
  double get iconSize {
    switch (this) {
      case CLButtonSize.small:
        return 16;
      case CLButtonSize.regular:
        return 24;
      case CLButtonSize.large:
        return 32;
    }
  }

  double get iconButtonSize {
	  switch (this) {
		  case CLButtonSize.small:
			  return 24;
		  case CLButtonSize.regular:
			  return 32;
		  case CLButtonSize.large:
			  return 48;
	  }
  }

  int get buttonHeight {
    switch (this) {
      case CLButtonSize.small:
        return 40;
      case CLButtonSize.regular:
        return 48;
      case CLButtonSize.large:
        return 56;
    }
  }

  CLThemeTextStyle get buttonTextStyle {
    switch (this) {
      case CLButtonSize.small:
        return CLThemeTextStyle.button2;
      case CLButtonSize.regular:
        return CLThemeTextStyle.button1;
      case CLButtonSize.large:
        return CLThemeTextStyle.button1;
    }
  }
}
