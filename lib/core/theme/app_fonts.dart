import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// App typography styles
/// Contains all text styles used throughout the application
class AppFonts {
  // Private constructor to prevent instantiation
  AppFonts._();

  // Headline Styles
  static TextStyle get styleBold34 => GoogleFonts.inter(
    fontSize: 34.sp,
    fontWeight: FontWeight.bold,
    height: 1.1,
  );

  static TextStyle get styleSemiBold28 => GoogleFonts.inter(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    height: 1.1,
  );

  static TextStyle get styleMedium22 => GoogleFonts.inter(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    height: 1.1,
  );

  // Body Styles - Height 1.1
  static TextStyle get styleMedium17 => GoogleFonts.inter(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    height: 1.1,
  );

  static TextStyle get styleRegular17 => GoogleFonts.inter(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    height: 1.1,
  );

  static TextStyle get styleMedium15 => GoogleFonts.inter(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    height: 1.1,
  );

  static TextStyle get styleRegular15 => GoogleFonts.inter(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    height: 1.1,
  );

  static TextStyle get styleMedium13 => GoogleFonts.inter(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    height: 1.1,
  );

  static TextStyle get styleRegular13 => GoogleFonts.inter(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    height: 1.1,
  );

  static TextStyle get styleMedium11 => GoogleFonts.inter(
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    height: 1.1,
  );

  static TextStyle get styleRegular11 => GoogleFonts.inter(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    height: 1.1,
  );

  // Paragraph Styles - Height 1.4
  static TextStyle get styleBold34P => GoogleFonts.inter(
    fontSize: 34.sp,
    fontWeight: FontWeight.bold,
    height: 1.4,
  );

  static TextStyle get styleSemiBold28P => GoogleFonts.inter(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  static TextStyle get styleMedium22P => GoogleFonts.inter(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static TextStyle get styleMedium17P => GoogleFonts.inter(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static TextStyle get styleRegular17P => GoogleFonts.inter(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  static TextStyle get styleMedium15P => GoogleFonts.inter(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static TextStyle get styleRegular15P => GoogleFonts.inter(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  static TextStyle get styleMedium13P => GoogleFonts.inter(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static TextStyle get styleRegular13P => GoogleFonts.inter(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  static TextStyle get styleMedium11P => GoogleFonts.inter(
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static TextStyle get styleRegular11P => GoogleFonts.inter(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );
}
