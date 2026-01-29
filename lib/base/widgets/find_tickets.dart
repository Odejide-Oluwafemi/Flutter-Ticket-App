import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.findTicketButtonColor,
      ),
      child: Text("Find Tickets", style: AppStyles.baseTextStyle.copyWith(color: Colors.white),),
    );
  }
}