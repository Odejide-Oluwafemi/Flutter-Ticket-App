import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(AppRoutes.allTickets),
        tooltip: "Book a Ticket",
        child: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 100, left: 15, right: 15, bottom: 20),
        // color: AppStyles.navSelectedColor,
        child: Column(
          children: [
            Container(
              width: 300,
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppStyles.dotColor,
              ),
              child: Icon(Icons.person, fill: 1, size: 100),
            ),
            const SizedBox(height: 20),
            Text("Odejide Oluwafemi", style: AppStyles.headline1,),
      
            const SizedBox(height: 40),
            AppDoubleText(
              leftText: "Booked Tickets",
              rightText: "See All",
              func: () => Navigator.of(context).pushNamed(AppRoutes.allTickets),
            ),
      
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 20,
                  children: ticketList
                      .take(6)
                      .map(
                        (ticketData) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRoutes.ticketScreen,
                              arguments: {
                                "ticketIndex": ticketList.indexOf(ticketData),
                              },
                            );
                          },
                          child: TicketView(data: ticketData),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
      
            const SizedBox(height: 40),
            AppDoubleText(leftText: "Booked Hotels", rightText: "", func: () {}),
      
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text("No hotels booked yet!", style: TextStyle(
                    fontSize: 16,
                  ),),
                  const SizedBox(height: 10,),
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppStyles.primaryColor,
                      ),
                      child: Text("Book one now", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),),
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
