import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/app_text_icon.dart';
import 'package:ticket_app/base/widgets/app_tickets_tabs.dart';
import 'package:ticket_app/base/widgets/find_tickets.dart';
import 'package:ticket_app/base/widgets/ticket_promotion.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      color: AppStyles.bgColor,
      child: ListView(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        children: [
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headline1.copyWith(fontSize: 35),
          ),
          const SizedBox(height: 20),

          AppTicketsTabs(firstTab: "Airplane Tickets", secondTab: "Hotels",),
          const SizedBox(height: 25),

          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          const SizedBox(height: 25),

          const FindTickets(),
          const SizedBox(height: 25),

          AppDoubleText(
            leftText: "Upcoming Flights",
            rightText: "See All",
            func: () => {},
          ),

          const SizedBox(height: 15),
         
          const TicketPromotion(),
        ],
      ),
    );
  }
}
