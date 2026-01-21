import "package:flutter/material.dart";
import 'package:ticket_app/base/bottom_nav_bar.dart';

class App extends StatefulWidget {
  const App(Key? key) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<Widget> screens = [
    Text("Home Page"),
    Text("Search Page"),
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
      appBar: AppBar(
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
      ),
      body: Center(child: screens[_selectedIndex]),
      bottomNavigationBar: BottomNavBar(onTap: _onBottomNavTapped),
    );
  }
}
