import 'package:mobile/constants/constants.dart';
import 'package:flutter/material.dart';

Widget teamProductContainer(
  BuildContext context, {
  required icon,
  required String title,
  required String position,
  required String subtitle,
}) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  return Container(
    margin: const EdgeInsets.only(top: 5), //Отступ сверху
    width: MediaQuery.of(context).size.width, // ширина контейнера
    // height: 220,
    // color: white, // Устанавливаем цвет контейнера),

    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center, //* Выравниваем по центру

      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            // left: 20,
          ),
          child: Center(
            child: Image.asset(
              icon,
              height: screenHeight * 0.2, //* 30% от высоты экрана
              width: screenWidth * 0.5, //* 70% от ширины экрана
              fit: BoxFit
                  .contain, // Масштабирование изображения с сохранением пропорций
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 20,
          ),
          // child: Container(
          // alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'SF-Pro-Display',
              fontSize: 20,
              color: black,
              fontWeight: FontWeight.normal, //* Устанавливаем начертание шрифта
            ),
            textAlign: TextAlign.center,
          ),
        ),
        // ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 20,
          ),
          child: Text(
            position,
            style: TextStyle(
              fontFamily: 'Microsoft',
              fontSize: 16,
              color: black,
              fontWeight: FontWeight.bold, //* Устанавливаем начертание шрифта
            ),
            textAlign: TextAlign.center,
          ),
        ),
        // ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 15, bottom: 20),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              color: black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
