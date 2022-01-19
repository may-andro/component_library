import 'package:component_library/foundation/color/foundation_color_pallet.dart';
import 'package:component_library/foundation/dimens/foundation_radius.dart';
import 'package:component_library/foundation/text_style/foundation_text_style.dart';
import 'package:component_library/theme/cl_theme.dart';
import 'package:component_library/utils/extension/brightness_extension.dart';
import 'package:component_library/utils/extension/design_system_extension.dart';

extension CLThemeExtension on CLTheme {
  FoundationColorPallet get colorPallet {
    final brightnessMapper = designSystem.colorBrightnessMapper;
    return brightness.getColorPallet(brightnessMapper);
  }

  FoundationTextStyle get textStyle => designSystem.textStyle;

  FoundationDimenRadius get dimenRadius => designSystem.dimenRadius;
}
