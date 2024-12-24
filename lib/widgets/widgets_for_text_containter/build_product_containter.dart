import 'package:carcraft/constants/constants.dart';
import 'package:flutter/material.dart';

Widget buildProductContainer(
  BuildContext context, {
  required icon,
  required String title,
  required String subtitle,
}) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  return Container(
    margin: const EdgeInsets.only(top: 5), //Отступ сверху
    width: MediaQuery.of(context).size.width, // ширина контейнера
    // height: 220,
    color: white, // Устанавливаем цвет контейнера),

    child: Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, //* Выравниваем по левому краю

      children: [
        Padding(
          padding: const EdgeInsets.only(
              // top: 10,
              // left: 20,
              ),
          child: Center(
            child: Image.asset(
              icon,
              height: screenHeight * 0.3, //* 30% от высоты экрана
              width: screenWidth * 0.7, //* 70% от ширины экрана
              fit: BoxFit
                  .contain, // Масштабирование изображения с сохранением пропорций
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            // top: 20,
            left: 20,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'SF-Pro-Display',
              fontSize: 23,
              color: greenPhone,
              fontWeight: FontWeight.bold, //* Устанавливаем начертание шрифта
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 15, bottom: 20),
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
