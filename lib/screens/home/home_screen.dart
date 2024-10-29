import 'package:flutter/material.dart';

import 'middle_section.dart';
import 'top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              TopSection(),
              MiddleSection(),
              // DataBaseSection(),
            ],
          ),
        ),
      ),
    );
  }
}
