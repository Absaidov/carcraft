import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CarRoomShowTopSectionDatabase extends StatelessWidget {
  const CarRoomShowTopSectionDatabase({super.key});

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
              context.go('/');
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
