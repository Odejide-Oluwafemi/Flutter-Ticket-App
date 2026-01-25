import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';

class TicketView extends StatelessWidget {
  final double screenSize;
  final Map<String, dynamic> data;
  const TicketView({super.key, required this.data, this.screenSize = 0.85});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * screenSize,
      // height: 179,
      child: Column(
        children: [
          // Blue
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppStyles.ticketColorBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
            ),
            child: Column(
              children: [
                // Top Widgets
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyleThird(text: data["from"]["code"]),
      
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigDot(),
                          SizedBox(
                            width: 100,
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: AppLayoutBuilder(randomDivider: 6),
                                ),
      
                                Center(
                                  child: Transform.rotate(
                                    angle: 1.57,
                                    child: Icon(
                                      Icons.local_airport_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          BigDot(),
                        ],
                      ),
                    ),
      
                    TextStyleThird(text: data["to"]["code"]),
                  ],
                ),
      
                SizedBox(height: 3),
      
                // Bottom Widgets
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyleFourth(text: data["from"]["name"]),
      
                    TextStyleFourth(text: data["flying_time"]),
      
                    TextStyleFourth(text: data["to"]["name"]),
                  ],
                ),
              ],
            ),
          ),
      
          // Separator
          Container(
            height: 20,
            color: AppStyles.ticketOrange,
            child: Row(
              children: [
                BigCircle(isRight: false),
                Expanded(
                  child: AppLayoutBuilder(randomDivider: 16, width: 6),
                ),
                BigCircle(isRight: true),
              ],
            ),
          ),
      
          // Orange
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppStyles.ticketOrange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(topText: data["date"], bottomText: "DATE"),
                    AppColumnTextLayout(topText: data["departure_time"], bottomText: "Departure Time", crossAxisAlignment: CrossAxisAlignment.center),
                    AppColumnTextLayout(topText: data["number"].toString(), bottomText: "Number", crossAxisAlignment: CrossAxisAlignment.end),
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
