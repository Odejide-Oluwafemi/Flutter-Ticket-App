import 'package:flutter/material.dart';

class AppStyles {
  // Colors
  static const Color primaryColor = Colors.deepPurple;
  static const Color bgColor = Color(0xFFEEEDF2);
  static const Color textColor = Color(0xFF3B3B3B);
  static const kakiColor = Color.fromARGB(255, 192, 192, 195);
  static const Color planeColor = const Color(0xFFBFC2DF);
  static const Color findTicketButtonColor =const Color(0xD91130CE);
  static const Color circleColor = Color(0xFF189999);
  static const Color dotColor = Color(0xFF8ACCF7);

  // Ticket
  static const Color ticketColorBlue = Color.fromARGB(255, 65, 149, 191);
  static const Color ticketOrange = Color(0xFFF37B67);
  static const Color ticketWhite = Colors.white;

  // Bottom Nav
  static const Color navSelectedColor = ticketColorBlue;
  static const Color navUnselectedColor = Color(0xFF526400);

  // TextStyles
  static const TextStyle baseTextStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500
  );

  static const TextStyle headline1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle headline4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
}
