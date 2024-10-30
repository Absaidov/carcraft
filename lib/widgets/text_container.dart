import 'package:carcraft/constants/constants.dart';
import 'package:flutter/material.dart';

// Функция для создания контейнера с текстом
Widget buildTextContainer(BuildContext context, String title, String subtitle) {
  return Container(
    margin: const EdgeInsets.only(top: 5),
    width: MediaQuery.of(context).size.width,
    height: 178,
    color: white, // Замените на вашу переменную, если она определена
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Выровнять по левому краю
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 23,
              color: Colors
                  .black, // Замените на вашу переменную, если она определена
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 20,
          ),
          child: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 17,
              color: Colors
                  .black, // Замените на вашу переменную, если она определена
            ),
          ),
        ),
      ],
    ),
  );
}
