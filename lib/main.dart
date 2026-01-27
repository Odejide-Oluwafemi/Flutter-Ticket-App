import 'package:flutter/material.dart';
import 'package:ticket_app/app.dart';
import 'package:ticket_app/screens/all_hotels.dart';
import 'package:ticket_app/screens/all_tickets.dart';

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
        "all_tickets": (context) => const AllTickets(),
        "all_hotels": (context) => const AllHotels()
      },
    );
  }
}