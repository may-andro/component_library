import 'package:component_library/foundation/dimens/foundation_radius.dart';
import 'package:flutter/material.dart';

class OBDimenRadius extends FoundationDimenRadius {
  @override
  BorderRadius get buttonRadius => BorderRadius.circular(8.0);

  @override
  BorderRadius get cardCornerRadius => BorderRadius.circular(16.0);

  @override
  BorderRadius get bottomSheetCornerRadius => BorderRadius.circular(32.0);
}
