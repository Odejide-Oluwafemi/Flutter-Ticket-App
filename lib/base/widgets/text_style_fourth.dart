import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextStyleFourth({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyles.headline4.copyWith(color: isColor == null ? Colors.white : Colors.grey,));
  }
}
