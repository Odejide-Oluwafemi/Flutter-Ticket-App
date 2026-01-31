import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_asset_images.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
// import 'package:ticket_app/base/utils/app_media.dart';

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> data;

  // final String imagePath;
  // final String name, location;
  // final int price;

  const HotelGridView(this.data, {super.key,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {"data": data}),
      child: Container(
        // width: size.width * 0.52,
        // height: 350,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage("${AppAssetImages.baseImage}/${data["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
      
            const SizedBox(height: 5),
      
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data["place"],
                  style: AppStyles.headline2.copyWith(
                    color: AppStyles.kakiColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data["destination"],
                      style: AppStyles.headline4.copyWith(color: Colors.white),
                    ),
                    Text(
                      "\$${data["price"].toString()}/night",
                      style: AppStyles.headline3.copyWith(
                        color: AppStyles.kakiColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
