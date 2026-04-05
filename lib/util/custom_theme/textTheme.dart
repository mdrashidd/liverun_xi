import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liverun_xi/util/constant/fontSize.dart';

class AppTextTheme{

  AppTextTheme._();

    static TextTheme lightModeTextTheme(BuildContext context) {
      return TextTheme(
        headlineLarge: GoogleFonts.playfairDisplay().copyWith(
            fontSize: context.fontSize.headlineLarge,
            fontWeight: FontWeight.bold,
            color: Colors.black,),

        headlineMedium: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.headlineMedium, fontWeight: FontWeight.w800, color: Colors.black,),

        headlineSmall: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.headlineSmall, fontWeight: FontWeight.w600, color: Colors.black),

        bodyLarge: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.bodyLarge, fontWeight: FontWeight.normal, color: Colors.black),
        bodyMedium: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.bodyMedium, fontWeight: FontWeight.normal, color: Colors.black),
        bodySmall: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.bodySmall, fontWeight: FontWeight.normal, color: Colors.black.withValues(alpha: 0.5)),

        labelLarge: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.labelLarge, fontWeight: FontWeight.w600, color: Colors.black),
        labelMedium: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.labelMedium, fontWeight: FontWeight.w600, color: Colors.black.withValues(alpha: 0.5)),
        labelSmall: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.labelSmall, fontWeight: FontWeight.w600, color: Colors.black.withValues(alpha: 0.5)),
      );

    }

    static TextTheme darkModeTextTheme(BuildContext context) {
      return TextTheme(
        headlineLarge: GoogleFonts.playfairDisplay().copyWith(
          fontSize: context.fontSize.headlineLarge,
          fontWeight: FontWeight.bold,
          color: Colors.white,),

        headlineMedium: GoogleFonts.roboto().copyWith(
          fontSize: context.fontSize.headlineMedium, fontWeight: FontWeight.w800, color: Colors.white,),

        headlineSmall: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.headlineSmall, fontWeight: FontWeight.w600, color: Colors.white),

        bodyLarge: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.bodyLarge, fontWeight: FontWeight.normal, color: Colors.white),
        bodyMedium: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.bodyMedium, fontWeight: FontWeight.normal, color: Colors.white),
        bodySmall: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.bodySmall, fontWeight: FontWeight.normal, color: Colors.white.withValues(alpha: 0.5)),

        labelLarge: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.labelLarge, fontWeight: FontWeight.w600, color: Colors.white),
        labelMedium: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.labelMedium, fontWeight: FontWeight.w600, color: Colors.white.withValues(alpha: 0.5)),
        labelSmall: GoogleFonts.roboto().copyWith(
            fontSize: context.fontSize.labelSmall, fontWeight: FontWeight.w600, color: Colors.white.withValues(alpha: 0.5)),
      );
      


    }
}