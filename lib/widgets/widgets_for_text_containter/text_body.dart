// import 'package:carcraft/constants/constants.dart';
import 'package:flutter/material.dart';

// Функция для создания контейнера с текстом
Widget buildTextBody(
  BuildContext context, {
  required String title,
}) {
  final screenWidth = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 20),
    child: SizedBox(
      width: screenWidth * 0.9,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: 'SF-Pro-Display',
          height: 1.5,
        ),
        textAlign: TextAlign.start,
      ),
    ),
  );
}
