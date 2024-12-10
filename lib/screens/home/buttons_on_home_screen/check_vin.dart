import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/screens/home/database_section/check_vin/check_vin_middle_section_database.dart';
// import 'package:carcraft/widgets/widgets_for_text_containter/build_top_section.dart';
import 'package:flutter/material.dart';

class CheckVin extends StatelessWidget {
  const CheckVin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        // top: false,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent, // Прозрачный фон
                iconTheme: IconThemeData(color: greenPhone),
              ),
              const CheckVinMiddleSectionDatabase(),
            ],
          ),
        ),
      ),
    );
  }
}
