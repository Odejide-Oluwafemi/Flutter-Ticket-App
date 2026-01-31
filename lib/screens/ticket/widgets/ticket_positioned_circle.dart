import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  final double? leftPos, topPos;
  final double? rightPos, bottomPos;
  const TicketPositionedCircle({super.key, this.leftPos, this.topPos, this.rightPos, this.bottomPos});

  @override
  Widget build(BuildContext context) {
    return Positioned(left: leftPos, top: topPos, bottom: bottomPos, right: rightPos, child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: AppStyles.textColor,
              )
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: AppStyles.textColor,
            ),
          ));
  }
}