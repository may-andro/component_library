import 'package:component_library/design_system/scarlet_red/color/sr_dark_color_pallet.dart';
import 'package:component_library/design_system/scarlet_red/color/sr_light_color_pallet.dart';
import 'package:component_library/foundation/color/color_brightness_mapper.dart';
import 'package:component_library/foundation/color/foundation_color_pallet.dart';

class SRColorBrightnessMapper extends ColorBrightnessMapper {
  @override
  FoundationColorPallet get darkColorPallet => SRDarkColorPallet();

  @override
  FoundationColorPallet get lightColorPallet => SRLightColorPallet();
}
