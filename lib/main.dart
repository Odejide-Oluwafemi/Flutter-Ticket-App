import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ETch First App",
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("ETch App", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Home Screen")
        ),
        bottomNavigationBar: BottomNavBar(key: key,),
      ),
    );
  }
}