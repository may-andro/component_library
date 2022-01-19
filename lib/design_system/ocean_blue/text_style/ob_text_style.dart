import 'package:component_library/foundation/text_style/foundation_font_weight.dart';
import 'package:component_library/foundation/text_style/foundation_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OBTextStyle extends FoundationTextStyle {
  @override
  TextStyle get h1 => GoogleFonts.robotoSlab(
        fontSize: 96.0,
        letterSpacing: -1.5,
        fontWeight: fontLight,
      );

  @override
  TextStyle get h2 => GoogleFonts.robotoSlab(
        fontSize: 60.0,
        letterSpacing: -0.5,
        fontWeight: fontLight,
      );

  @override
  TextStyle get h3 => GoogleFonts.robotoSlab(
        fontSize: 48.0,
        letterSpacing: 0.0,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get h4 => GoogleFonts.robotoSlab(
        fontSize: 34.0,
        letterSpacing: 0.25,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get h5 => GoogleFonts.robotoSlab(
        fontSize: 24.0,
        letterSpacing: 0.0,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get h6 => GoogleFonts.robotoSlab(
        fontSize: 20.0,
        letterSpacing: 0.15,
        fontWeight: fontMedium,
      );

  @override
  TextStyle get subtitle1 => GoogleFonts.roboto(
        fontSize: 16.0,
        letterSpacing: 0.15,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get subtitle2 => GoogleFonts.roboto(
        fontSize: 14.0,
        letterSpacing: 0.1,
        fontWeight: fontMedium,
      );

  @override
  TextStyle get body1 => GoogleFonts.robotoCondensed(
        fontSize: 16.0,
        letterSpacing: 0.5,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get body2 => GoogleFonts.robotoCondensed(
        fontSize: 14.0,
        letterSpacing: 0.25,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get button1 => GoogleFonts.robotoMono(
        fontSize: 14.0,
        letterSpacing: 1.25,
        fontWeight: fontMedium,
      );

  @override
  TextStyle get button2 => GoogleFonts.robotoMono(
        fontSize: 12.0,
        letterSpacing: 1.25,
        fontWeight: fontMedium,
      );

  @override
  TextStyle get caption => GoogleFonts.roboto(
        fontSize: 12.0,
        letterSpacing: 0.4,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get overline => GoogleFonts.robotoCondensed(
        fontSize: 10.0,
        letterSpacing: 1.5,
        fontWeight: fontRegular,
      );
}
