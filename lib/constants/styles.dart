import 'package:flutter/material.dart';

class TextStyles {
  static const double _headingFontSize = 24;
  static const double _paragraphFontSize = 16;
  static const double _subHeadingFontSize = 20;

  static const heading = TextStyle(
    color: Colors.black87,
    fontSize: _headingFontSize,
    fontWeight: FontWeight.bold,
  );

  static const paragraph = TextStyle(
    color: Colors.black87,
    fontSize: _paragraphFontSize,
    fontWeight: FontWeight.normal,
  );

  static const subHeading = TextStyle(
    color: Colors.black87,
    fontSize: _subHeadingFontSize,
    fontWeight: FontWeight.w600,
  );
}

class SpacerStyles {
  static const double sm = 8;
  static const double base = 16;
  static const double semiLarge = 24;
  static const double large = 32;
  static const double xl = 40;
  static const double xxl = 48;
}
