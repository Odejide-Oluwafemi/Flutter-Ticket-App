import "package:flutter/material.dart";
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/home_page.dart';
import 'package:ticket_app/screens/search_page.dart';

class App extends StatefulWidget {
  const App({super.key});


  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<Widget> screens = [
    HomePage(),
    SearchPage(),
    Text("Tickets Page"),
    Text("Profile Page"),
  ];

  int _selectedIndex = 0;

  void _onBottomNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "ETch App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        
      ), */
      backgroundColor: AppStyles.bgColor,
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavBar(onTap: _onBottomNavTapped),
    );
  }
}
