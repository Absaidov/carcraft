import 'package:carcraft/constants/constants.dart';
import 'package:flutter/material.dart';

// Функция для создания контейнера с текстом
Widget buildTextContainer(
  BuildContext context, {
  required String title,
  required subtitle,
}) {
  return Container(
    margin: const EdgeInsets.only(top: 5), //Отступ сверху
    width: MediaQuery.of(context).size.width, // ширина контейнера
    height: 220,
    color: white, // Устанавливаем цвет контейнера
    child: Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Выравниваем по левому краю
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 23,
              color: black,
              fontWeight: FontWeight.bold, // Устанавливаем начертание шрифта
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 15),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 17,
              color: black,
            ),
          ),
        ),
      ],
    ),
  );
}
