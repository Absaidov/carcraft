import 'package:flutter/material.dart';
import 'package:mobile/screens/home/database_section/team/team_middle_section_database.dart';

import '../../../constants/constants.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent, //* Прозрачный фон
                iconTheme: IconThemeData(color: greenPhone),
              ),
              const TeamMiddleSectionDatabase(),
            ],
          ),
        ),
      ),
    );
  }
}
