import 'dart:math';

import 'package:flutter/material.dart';
import 'package:see_more_text/see_more_text.dart';
import 'package:ticket_app/base/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late Map<String, dynamic> data;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments == null) return;

    var args = ModalRoute.of(context)!.settings.arguments as Map;
    data = args["data"];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "${AppMedia.baseImage}/${data["image"]}",
                      fit: BoxFit.cover,
                    ),
                  ),

                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(128),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 8,
                        ),
                        child: Text(
                          data["place"],
                          style: AppStyles.headline2.copyWith(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.all(0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    backgroundBlendMode: BlendMode.multiply,
                    color: AppStyles.primaryColor,
                  ),
                  child: Icon(Icons.arrow_back_rounded, color: Colors.white,),
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 12),
                child: Text(
                  data["destination"],
                  style: AppStyles.headline1.copyWith(
                    fontSize: 24,
                    color: AppStyles.primaryColor,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: SeeMoreText(
                  text: data["description"],
                  maxLines: 5,
                  seeMoreText: "Show More",
                  seeLessText: "Show less",
                  animationDuration: Durations.medium3,
                  animationCurve: Curves.easeInOut,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "More Images",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                height: 200,
                padding: const EdgeInsets.all(10),

                child: ListView.builder(
                  itemExtent: 200,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      margin: EdgeInsets.only(
                        right: index == (10 - 1) ? 0 : 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppStyles.primaryColor,
                      ),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        "${AppMedia.baseImage}/${(Random().nextInt(hotelList.length) + 1)}.jpg",
                      ),
                    );
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
