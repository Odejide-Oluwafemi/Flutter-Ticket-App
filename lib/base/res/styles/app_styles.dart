import 'package:flutter/material.dart';

Color primary = Colors.deepPurple;

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color textColor = Color(0xFF3B3B3B);

  // Ticket
  static Color ticketColorBlue = const Color.fromARGB(255, 65, 149, 191);
  static Color ticketOrange = const Color(0xFFF37B67);


  // Bottom Nav
  static Color navSelectedColor = ticketColorBlue;
  static Color navUnselectedColor = const Color(0xFF526400);

  // TextStyles
  static TextStyle baseTextStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500
  );

  static TextStyle headline1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static TextStyle headline2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headline4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
}
