import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_tickets_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppStyles.bgColor,
      child: ListView(
        children: [
          Text("Tickets", style: AppStyles.headline1,),
          const SizedBox(height: 20,),
          AppTicketsTabs(firstTab: "Upcoming", secondTab: "Previous",)
        ],
      ),
    );
  }
}