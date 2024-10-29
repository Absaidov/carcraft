import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/screens/home/database_section/middle_section_database.dart';
import 'package:carcraft/screens/home/database_section/top_section_database.dart';
import 'package:carcraft/screens/home/home_screen.dart';
import 'package:carcraft/screens/home/middle_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataBaseSection extends StatelessWidget {
  const DataBaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Color(0Xff19254b),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 8),
          child: Column(
            children: [
              TopSectionDatabase(),
              MiddleSectionDatabase(),
            ],
          ),
        ),
      ),
    );
  }
}
