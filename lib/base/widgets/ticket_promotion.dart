import 'package:flutter/material.dart';
import 'package:ticket_app/base/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .42,
                height: 405,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("${AppMedia.baseImage}/12.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss",
                      style: AppStyles.headline2,
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  SizedBox(
                    height: 195,
                    child: Stack(

                      children: [
                        Container(
                          width: size.width * 0.44,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFF3A8888),
                          ),
                                  
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: AppStyles.headline1.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Take the survey about our services and get discount",
                                style: AppStyles.headline2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                                  
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 18,
                                color: AppStyles.circleColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                
                SizedBox(height: 15,),
                
                Container(
                    width: size.width * 0.44,
                    height: 195,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFFEC6545),
                    ),
              
                    child: Column(
                      children: [
                        Text("Take Love", style: AppStyles.headline2.copyWith(
                          color: Colors.white,
                        ),),
                        SizedBox(height: 10)
                      ],
                    ),
                  )
                ],
              ),
            ],
          );
  }
}