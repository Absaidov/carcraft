import 'package:carcraft/constants/constants.dart';
import 'package:flutter/material.dart';

// Функция для создания заголовка текста
Widget buildTextHeader(
  BuildContext context, {
  required String text,
  double fontSize = 26.0,
  Color? color,
}) {
  final screenWidth = MediaQuery.of(context).size.width;

  return SizedBox(
    width: screenWidth * 0.9,
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color:
            color ?? white, // Используйте заданный цвет или черный по умолчанию
        fontFamily: 'SF-Pro-Display',
      ),
      textAlign: TextAlign.start,
    ),
  );
}
