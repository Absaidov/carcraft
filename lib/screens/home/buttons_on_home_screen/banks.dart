import 'package:carcraft/screens/home/database_section/banks/banks_middle_section_database.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/build_top_section.dart';
import 'package:flutter/material.dart';

class Banks extends StatelessWidget {
  const Banks({super.key});

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
              buildTopSection(
                context: context,
                iconPath: 'assets/icons/back_arrow.svg',
                route: '/',
              ),
              const BanksMiddleSectionDatabase(),
            ],
          ),
        ),
      ),
    );
  }
}
