import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String leftText, rightText;
  final VoidCallback func;
  const AppDoubleText({required this.leftText, required this.rightText, required this.func, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText, style: AppStyles.headline3),
          InkWell(
            onTap: func,
            child: Text(rightText, style: AppStyles.baseTextStyle.copyWith(
              color: AppStyles.primaryColor,
            ),),
          )
        ],
      ),
    );
  }
}