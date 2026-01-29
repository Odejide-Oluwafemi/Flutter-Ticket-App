import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText, bottomText;
  final bool? isColor;
  final CrossAxisAlignment crossAxisAlignment;

  const AppColumnTextLayout({super.key, this.crossAxisAlignment = CrossAxisAlignment.start, required this.topText, required this.bottomText, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextStyleThird(text: topText, isColor: isColor,),
        const SizedBox(height: 8,),
        TextStyleFourth(text: bottomText, isColor: isColor,),
      ],
    );
  }
}