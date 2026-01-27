import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_tickets_tabs.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppStyles.bgColor,
      child: ListView(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
        children: [
          Text("What are\nyou looking for?", style: AppStyles.headline1.copyWith(fontSize: 35),),
          const SizedBox(height: 20,),
          AppTicketsTabs(),
        ],
      ),
    );
  }
}