import 'package:component_library/foundation/text_style/foundation_font_weight.dart';
import 'package:component_library/foundation/text_style/foundation_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SRTextStyle extends FoundationTextStyle {
  @override
  TextStyle get h1 => GoogleFonts.nunitoSans(
        fontSize: 96.0,
        letterSpacing: -1.5,
        fontWeight: fontLight,
      );

  @override
  TextStyle get h2 => GoogleFonts.nunitoSans(
        fontSize: 60.0,
        letterSpacing: -0.5,
        fontWeight: fontLight,
      );

  @override
  TextStyle get h3 => GoogleFonts.nunitoSans(
        fontSize: 48.0,
        letterSpacing: 0.0,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get h4 => GoogleFonts.nunitoSans(
        fontSize: 34.0,
        letterSpacing: 0.25,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get h5 => GoogleFonts.nunitoSans(
        fontSize: 24.0,
        letterSpacing: 0.0,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get h6 => GoogleFonts.nunitoSans(
        fontSize: 20.0,
        letterSpacing: 0.15,
        fontWeight: fontMedium,
      );

  @override
  TextStyle get subtitle1 => GoogleFonts.ropaSans(
        fontSize: 16.0,
        letterSpacing: 0.15,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get subtitle2 => GoogleFonts.ropaSans(
        fontSize: 14.0,
        letterSpacing: 0.1,
        fontWeight: fontMedium,
      );

  @override
  TextStyle get body1 => GoogleFonts.ptSans(
        fontSize: 16.0,
        letterSpacing: 0.5,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get body2 => GoogleFonts.ptSans(
        fontSize: 14.0,
        letterSpacing: 0.25,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get button1 => GoogleFonts.openSans(
        fontSize: 14.0,
        letterSpacing: 1.25,
        fontWeight: fontMedium,
      );

  @override
  TextStyle get button2 => GoogleFonts.openSans(
        fontSize: 12.0,
        letterSpacing: 1.25,
        fontWeight: fontMedium,
      );

  @override
  TextStyle get caption => GoogleFonts.sourceSansPro(
        fontSize: 12.0,
        letterSpacing: 0.4,
        fontWeight: fontRegular,
      );

  @override
  TextStyle get overline => GoogleFonts.sourceSansPro(
        fontSize: 10.0,
        letterSpacing: 1.5,
        fontWeight: fontRegular,
      );
}
