import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class BottomNavBar extends StatefulWidget {
  final void Function(int)  onTap;
  const BottomNavBar({required this.onTap, super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _navIndex = 0;

  void _updateIndex(int index) {
    setState(() {
      _navIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _navIndex,
      selectedItemColor: AppStyles.navSelectedColor,
      unselectedItemColor: AppStyles.navUnselectedColor,
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: "Home",
          tooltip: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label: "Search",
          tooltip: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          label: "Tickets",
          tooltip: "Tickets",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: "Profile",
          tooltip: "Profile",
        ),
      ],
      onTap: (index) {
        widget.onTap(index);
        _updateIndex(index);
      },
    );
  }
}
