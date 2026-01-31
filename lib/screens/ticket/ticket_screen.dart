import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/app_tickets_tabs.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_positioned_circle.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments == null) return;

    var args = ModalRoute.of(context)!.settings.arguments as Map;
    ticketIndex = args["ticketIndex"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ticket", style: AppStyles.headline2),
        backgroundColor: AppStyles.bgColor,
      ),
      backgroundColor: AppStyles.bgColor,
      body: Container(
        color: AppStyles.bgColor,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: ListView(
                children: [
                  AppTicketsTabs(firstTab: "Upcoming", secondTab: "Previous"),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TicketView(data: ticketList[ticketIndex], isColor: true),
                  ),
                  SizedBox(height: 1),
                  // Ticket Slips
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
                        AppLayoutBuilder(
                          randomDivider: 15,
                          width: 5,
                          isColor: true,
                        ),
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
                        AppLayoutBuilder(
                          randomDivider: 15,
                          width: 5,
                          isColor: true,
                        ),
                        SizedBox(height: 20),
              
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(AppMedia.res, scale: 11),
                                    Text("***2462", style: AppStyles.headline3),
                                  ],
                                ),
                                Text("Payment method", style: AppStyles.headline4),
                              ],
                            ),
                            AppColumnTextLayout(
                              topText: "\$249.99",
                              bottomText: "Price",
                              crossAxisAlignment: CrossAxisAlignment.start,
                              isColor: true,
                            ),
                          ],
                        ),
              
                        SizedBox(height: 20),
                        AppLayoutBuilder(
                          randomDivider: 15,
                          width: 5,
                          isColor: true,
                        ),
                      ],
                    ),
                  ),
              
                  // QR Code
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 13),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21),
                      ),
                      color: AppStyles.ticketWhite,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BarcodeWidget(
                          height: 70,
                          data: "https://www.google.com",
                          barcode: Barcode.code128(),
                          drawText: false,
                          color: AppStyles.navSelectedColor,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 20),
                  // Ticket (colored)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TicketView(data: ticketList[ticketIndex]),
                  ),
                ],
              ),
            ),
      
            TicketPositionedCircle(leftPos: size.width * 0.038, topPos: size.height / 3.6),
            TicketPositionedCircle(rightPos: size.width * 0.038, topPos: size.height / 3.6),
          ],
        ),
      ),
    );
  }
}
