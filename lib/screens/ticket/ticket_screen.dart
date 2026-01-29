import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/app_tickets_tabs.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppStyles.bgColor,
      child: ListView(
        children: [
          Text("Tickets", style: AppStyles.headline1),
          const SizedBox(height: 20),
          AppTicketsTabs(firstTab: "Upcoming", secondTab: "Previous"),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TicketView(data: ticketList[0], isColor: true),
          ),
          SizedBox(height: 1),
          Container(
            color: AppStyles.ticketWhite,
            margin: const EdgeInsetsGeometry.symmetric(horizontal: 13),
            padding: const EdgeInsetsGeometry.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                      crossAxisAlignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: "8765_77026",
                      bottomText: "Passport",
                      crossAxisAlignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                  ],
                ),

                SizedBox(height: 20),
                AppLayoutBuilder(randomDivider: 15, width: 5, isColor: true),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "7864_DB4576",
                      bottomText: "Number of E-tickets",
                      crossAxisAlignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: "B80365",
                      bottomText: "Booking Code",
                      crossAxisAlignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                  ],
                ),

                SizedBox(height: 20),
                AppLayoutBuilder(randomDivider: 15, width: 5, isColor: true),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "7864_DB4576",
                      bottomText: "Payment method",
                      crossAxisAlignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: "\$249.99",
                      bottomText: "Price",
                      crossAxisAlignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
