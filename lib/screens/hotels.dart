import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_media.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.52,
      height: 340,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AppMedia.logoAssetImage,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 15),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Open Space",
                  style: AppStyles.headline1.copyWith(
                    color: AppStyles.kakiColor,
                  ),
                ),
                Text(
                  "London",
                  style: AppStyles.headline4.copyWith(color: Colors.white),
                ),
                Text(
                  "\$25/night",
                  style: AppStyles.headline2.copyWith(
                    color: AppStyles.kakiColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
