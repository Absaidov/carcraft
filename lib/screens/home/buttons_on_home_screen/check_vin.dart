import 'package:carcraft/screens/home/database_section/check_vin/check_vin_middle_section_database.dart';
import 'package:carcraft/screens/home/database_section/check_vin/check_vin_top_section_database.dart';
import 'package:flutter/material.dart';

class CheckVin extends StatelessWidget {
  const CheckVin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        // top: false,
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 8),
          child: Column(
            children: [
              CheckVinTopSectionDatabase(),
              CheckVinMiddleSectionDatabase(),
            ],
          ),
        ),
      ),
    );
  }
}
