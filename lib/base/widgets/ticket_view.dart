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
  final bool? isColor;

  const TicketView({super.key, required this.data, this.screenSize = 0.85, this.isColor});

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
              color: (isColor == null || isColor == false) ? AppStyles.ticketColorBlue : AppStyles.ticketWhite,
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
                    TextStyleThird(text: data["from"]["code"], isColor: isColor,),
      
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigDot(isColor: isColor,),
                          SizedBox(
                            width: 100,
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 24,
                                  child: AppLayoutBuilder(randomDivider: 6, isColor: isColor,),
                                ),
      
                                Center(
                                  child: Transform.rotate(
                                    angle: 1.57,
                                    child: Icon(
                                      Icons.local_airport_rounded,
                                      color: (isColor == null || isColor == false) ?Colors.white : AppStyles.dotColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          BigDot(isColor: isColor,),
                        ],
                      ),
                    ),
      
                    TextStyleThird(text: data["to"]["code"], isColor: isColor,),
                  ],
                ),
      
                SizedBox(height: 3),
      
                // Bottom Widgets
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyleFourth(text: data["from"]["name"], isColor: isColor,),
      
                    TextStyleFourth(text: data["flying_time"], isColor: isColor),
      
                    TextStyleFourth(text: data["to"]["name"], isColor: isColor),
                  ],
                ),
              ],
            ),
          ),
      
          // Separator
          Container(
            height: 20,
            color: (isColor == null || isColor == false) ?AppStyles.ticketOrange : Colors.white,
            child: Row(
              children: [
                BigCircle(isRight: false, isColor: isColor),
                Expanded(
                  child: AppLayoutBuilder(randomDivider: 16, width: 6, isColor: isColor,),
                ),
                BigCircle(isRight: true, isColor: isColor),
              ],
            ),
          ),
      
          // Orange
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: (isColor == null || isColor == false) ?AppStyles.ticketOrange : Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular((isColor == null || isColor == false) ? 21 : 0),
                bottomRight: Radius.circular((isColor == null || isColor == false) ? 21 : 0),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(topText: data["date"], bottomText: "DATE", isColor: isColor,),
                    AppColumnTextLayout(topText: data["departure_time"], bottomText: "Departure Time", crossAxisAlignment: CrossAxisAlignment.center, isColor: isColor,),
                    AppColumnTextLayout(topText: data["number"].toString(), bottomText: "Number", crossAxisAlignment: CrossAxisAlignment.end, isColor: isColor,),
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
