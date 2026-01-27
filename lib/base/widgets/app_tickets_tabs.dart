import 'package:flutter/material.dart';

class AppTicketsTabs extends StatelessWidget {
  const AppTicketsTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
              ),
              child: Text("Airline Tickets"),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
              ),
              alignment: Alignment.center,
              child: Text("Hotels"),
            ),
          ),
        ],
      ),
    );
  }
}