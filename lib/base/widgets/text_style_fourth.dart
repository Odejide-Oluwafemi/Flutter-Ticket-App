import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  const TextStyleFourth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyles.headline4.copyWith(color: Colors.white));
  }
}
