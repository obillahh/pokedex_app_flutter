library text_style;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

//
mixin Font implements FontWeight {
  static FontWeight get l => FontWeight.w300;
  static FontWeight get n => FontWeight.w400;
  static FontWeight get sb => FontWeight.w500;
  static FontWeight get b => FontWeight.w700;
}

//
class AppTextStyle extends TextStyle {
  // Header styles
  static TextStyle get headline => GoogleFonts.poppins(
        fontWeight: Font.b,
        fontSize: 24.0.sp,
      );

  static TextStyle get subtitle1 => GoogleFonts.poppins(
        fontWeight: Font.b,
        fontSize: 14.0.sp,
      );

  static TextStyle get subtitle2 => GoogleFonts.poppins(
        fontWeight: Font.b,
        fontSize: 12.0.sp,
      );

  static TextStyle get subtitle3 => GoogleFonts.poppins(
        fontWeight: Font.b,
        fontSize: 10.0.sp,
      );

  // Body styles
  static TextStyle get body1 => GoogleFonts.poppins(
        fontWeight: Font.n,
        fontSize: 14.0.sp,
      );

  static TextStyle get body2 => GoogleFonts.poppins(
        fontWeight: Font.n,
        fontSize: 12.0.sp,
      );

  static TextStyle get body3 => GoogleFonts.poppins(
        fontWeight: Font.n,
        fontSize: 10.0.sp,
      );

  static TextStyle get caption => GoogleFonts.poppins(
        fontWeight: Font.n,
        fontSize: 8.0.sp,
      );
}
