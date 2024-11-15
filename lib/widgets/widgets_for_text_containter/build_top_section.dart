import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// Метод для создания верхней панели с иконкой и маршрутом
Widget buildTopSection({
  required BuildContext context,
  required String iconPath,
  required String route,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            context.go(route); // Переход на указанный маршрут
          },
          child: SizedBox(
            width: 40,
            height: 35,
            child:
                SvgPicture.asset(iconPath), // Использование переданной иконки
          ),
        ),
      ],
    ),
  );
}
