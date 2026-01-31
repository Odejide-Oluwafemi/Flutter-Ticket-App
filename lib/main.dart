import 'package:flutter/material.dart';
import 'package:ticket_app/app.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/all_hotels.dart';
import 'package:ticket_app/screens/all_tickets.dart';
import 'package:ticket_app/screens/hotel_detail.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ETch First App",
      theme: ThemeData(),
      // home: App(key),
      routes: {
        "/": (context) => const App(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),
      },
    );
  }
}