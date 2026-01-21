import 'package:flutter/material.dart';
import 'package:ticket_app/app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ETch First App",
      theme: ThemeData(),
      home: App(key),
    );
  }
}