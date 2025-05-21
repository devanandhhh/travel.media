import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle aclonica({double size = 14, Color color = Colors.black}) {
    return GoogleFonts.aclonica(
      fontSize: size,
      color: color,
    );
  }
  static TextStyle adamina({double size = 14, Color color = Colors.black,double letterSpacing=0}) {
    return GoogleFonts.adamina(
      fontSize: size,letterSpacing: letterSpacing,
      color: color,
    );
  }
  static TextStyle actor({double size = 14, Color color = Colors.black,double letterSpacing=0}) {
    return GoogleFonts.actor(
      fontSize: size,letterSpacing: letterSpacing,
      color: color,
    );
  }
  static TextStyle acme({double size = 14, Color color = Colors.black,double letterSpacing=0}) {
    return GoogleFonts.acme(
      fontSize: size,letterSpacing: letterSpacing,
      color: color,
    );
  }
}