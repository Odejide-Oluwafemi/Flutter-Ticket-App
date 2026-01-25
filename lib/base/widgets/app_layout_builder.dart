import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomDivider;
  final double width;

  const AppLayoutBuilder({required this.randomDivider, this.width = 3, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate((constraints.maxWidth / randomDivider).floor(), (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
            ),
          ),
        );
      },
    );
  }
}