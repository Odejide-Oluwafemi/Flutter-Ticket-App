import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/screens/hotels_grid_view.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(backgroundColor: AppStyles.bgColor,),
      body: Container(
        color: AppStyles.bgColor,
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.85,
          ),
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
            var singleHotel = hotelList[index];
            return HotelGridView(singleHotel);
          }
        ),
      ),
    );
  }
}

/*
  ListView(
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
*/