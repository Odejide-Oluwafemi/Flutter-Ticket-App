import "package:fluentui_icons/fluentui_icons.dart";
import "package:flutter/material.dart";
import "package:ticket_app/base/res/styles/app_styles.dart";
import "package:ticket_app/base/media.dart";
import "package:ticket_app/base/utils/app_json.dart";
import "package:ticket_app/base/utils/app_routes.dart";
import "package:ticket_app/base/widgets/app_double_text.dart";
import "package:ticket_app/base/widgets/ticket_view.dart";
import "package:ticket_app/screens/hotels.dart";


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 40),
        // Header
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Header Left Side
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: AppStyles.headline3),
                      SizedBox(height: 5),
                      Text("Book Tickets", style: AppStyles.headline1),
                    ],
                  ),

                  // Header Right Side
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(AppMedia.logo)),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              // Search Input
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFFF4F6FD),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC285),
                    ),
                    const SizedBox(width: 10),
                    Text("Search"),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Upcoming Flight --- View All
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
          child: AppDoubleText(
            leftText: "Upcoming Flights",
            rightText: "View All",
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
        ),

        // Ticket Carousel Section
        Container(
          padding: EdgeInsets.all(18),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 20,
              children: ticketList.take(2).map((ticketData) => TicketView(data: ticketData)).toList(),
            ),
          ),
        ),

        // Hotels
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
          child: AppDoubleText(
            leftText: "Hotels",
            rightText: "View All",
            func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 20,
              children: hotelList.take(3).map((hotelData) => Hotel(hotelData)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
