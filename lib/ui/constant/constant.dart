import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color.fromARGB(255, 108, 206, 116);
const Color backgroundDarkColor = Color(0xFF171822);
const Color backgroundLightColor = Color(0xFFF1F3F6);

void setStatusBar(String theme) {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: theme == "dark" ? Brightness.dark : Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: primaryColor,
  cardColor: const Color(0xffF1F3F6),
  iconTheme: const IconThemeData(
    color: Color(0xFF3A4276),
  ),
  textTheme: TextTheme(
    labelLarge: GoogleFonts.poppins(
      fontSize: 15,
      height: 1.6,
      color: const Color(0xff212330),
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 12,
      color: const Color(0xff1B1D28),
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: GoogleFonts.poppins(
      height: 1.6,
      fontSize: 12,
      color: const Color(0xff7b7f9e),
      fontWeight: FontWeight.w400,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 24,
      color: const Color(0xff171822),
      fontWeight: FontWeight.w600,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 22,
      color: const Color(0xff3A4276),
      fontWeight: FontWeight.w800,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 15,
      color: const Color(0xff3A4276),
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w700,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: backgroundLightColor).copyWith(background: Colors.white),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: backgroundDarkColor,
  primaryColor: primaryColor,
  cardColor: const Color(0xffF1F3F6),
  iconTheme: const IconThemeData(
    color: Color(0xff7b7f9e),
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.poppins(
      fontSize: 12,
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: GoogleFonts.poppins(
      height: 1.6,
      fontSize: 12,
      color: const Color(0xff7b7f9e),
      fontWeight: FontWeight.w400,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 15,
      height: 1.6,
      color: const Color(0xff212330),
      fontWeight: FontWeight.w600,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 24,
      color: const Color(0xFFFFFFFF),
      fontWeight: FontWeight.w600,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 22,
      color: const Color(0xFFFFFFFF),
      fontWeight: FontWeight.w800,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 15,
      color: const Color(0xff7b7f9e),
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w700,
    ),
  ),
  colorScheme: const ColorScheme.light().copyWith(
    brightness: Brightness.light,
  ),
);
