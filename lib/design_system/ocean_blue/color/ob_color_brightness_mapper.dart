import 'package:component_library/design_system/ocean_blue/color/ob_dark_color_pallet.dart';
import 'package:component_library/design_system/ocean_blue/color/ob_light_color_pallet.dart';
import 'package:component_library/foundation/color/color_brightness_mapper.dart';
import 'package:component_library/foundation/color/foundation_color_pallet.dart';

class OBColorBrightnessMapper extends ColorBrightnessMapper {
  @override
  FoundationColorPallet get darkColorPallet => OBDarkColorPallet();

  @override
  FoundationColorPallet get lightColorPallet => OBLightColorPallet();
}
