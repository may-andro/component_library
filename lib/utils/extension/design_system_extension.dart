import 'package:component_library/design_system/design_system.dart';
import 'package:component_library/design_system/ocean_blue/color/ob_color_brightness_mapper.dart';
import 'package:component_library/design_system/ocean_blue/dimen/ob_dimen_radius.dart';
import 'package:component_library/design_system/ocean_blue/text_style/ob_text_style.dart';
import 'package:component_library/design_system/scarlet_red/color/sr_color_brightness_mapper.dart';
import 'package:component_library/design_system/scarlet_red/dimen/sr_dimen_radius.dart';
import 'package:component_library/design_system/scarlet_red/text_style/sr_text_style.dart';
import 'package:component_library/foundation/color/color_brightness_mapper.dart';
import 'package:component_library/foundation/dimens/foundation_radius.dart';
import 'package:component_library/foundation/text_style/foundation_text_style.dart';

extension DesignSystemExtension on DesignSystem {
  ColorBrightnessMapper get colorBrightnessMapper {
    switch (this) {
      case DesignSystem.oceanBlue:
        return OBColorBrightnessMapper();
      case DesignSystem.scarletRed:
        return SRColorBrightnessMapper();
    }
  }

  FoundationTextStyle get textStyle {
    switch (this) {
      case DesignSystem.oceanBlue:
        return OBTextStyle();
      case DesignSystem.scarletRed:
        return SRTextStyle();
    }
  }

  FoundationDimenRadius get dimenRadius {
    switch (this) {
      case DesignSystem.oceanBlue:
        return OBDimenRadius();
      case DesignSystem.scarletRed:
        return SRDimenRadius();
    }
  }
}
