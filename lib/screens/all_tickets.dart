import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Tickets")),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 18),
        children: ticketList
            .map(
              (ticketData) => Container(
                padding: EdgeInsets.symmetric(horizontal: 18),
                margin: EdgeInsets.only(bottom: 18),
                child: TicketView(data: ticketData, screenSize: 1),
              ),
            )
            .toList(),
      ),
    );
  }
}
