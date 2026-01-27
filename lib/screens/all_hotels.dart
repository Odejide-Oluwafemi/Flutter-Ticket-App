import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/screens/hotels.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: hotelList.map((hotelData) => Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Hotel(
                  name: hotelData["place"],
                  imagePath: hotelData["image"],
                  location: hotelData["destination"],
                  price: hotelData["price"],
                ),
        )).toList(),
      ),
    );
  }
}