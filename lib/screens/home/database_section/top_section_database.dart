import 'package:carcraft/screens/home/home_screen.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:url_launcher/url_launcher.dart'; // Импортируем пакет

class TopSectionDatabase extends StatelessWidget {
  const TopSectionDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // Обработчик нажатия
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: SizedBox(
              width: 40,
              height: 35,
              child: SvgPicture.asset(
                'assets/icons/back_arrow.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
