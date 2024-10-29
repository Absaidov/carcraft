import 'package:carcraft/constants/constants.dart';
import 'package:flutter/material.dart';

class MiddleSectionDatabase extends StatelessWidget {
  const MiddleSectionDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    // Получаем ширину экрана
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      // Оборачиваем в контейнер
      height: MediaQuery.of(context).size.height * 0.8, // Устанавливаем высоту
      padding: const EdgeInsets.only(bottom: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth * 0.9,
              child: Text(
                'ПРЕИМУЩЕСТВА',
                style: TextStyle(
                  fontSize: 26,
                  color: greenPhone,
                  fontFamily: 'SF-Pro-Display',
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: screenWidth * 0.9,
              child: const Text(
                'СОТРУДНИЧЕСТВА ДЛЯ АВТОСАЛОНОВ',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'SF-Pro-Display',
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                width: screenWidth * 0.9,
                child: const Text(
                  'CARCRAFT предлагает автодиллерам и автосалонам'
                  " удобную платформу для получения финансирования"
                  " без лишних сложностей. Они могут легко заполнить заявку"
                  " на финансирование и получить ответ от нескольких банков,"
                  " что позволяет выбрать наиболее выгодное предложение.",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SF-Pro-Display',
                    height: 1.5,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            // Первый контейнер с уникальным текстом
            Container(
              width: MediaQuery.of(context).size.width,
              height: 178,
              color: white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                child: Text(
                  'Скорость подключения к платформе — это быстрый и удобный процесс.',
                  style: TextStyle(
                    fontSize: 23,
                    color: black,
                  ),
                ),
              ),
            ),
            // Второй контейнер с уникальным текстом
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.width,
              height: 178,
              color: white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                child: Text(
                  'Обработка заявок занимает минимальное время и гарантирует результат.',
                  style: TextStyle(
                    fontSize: 23,
                    color: black,
                  ),
                ),
              ),
            ),
            // Третий контейнер с уникальным текстом
            Container(
              width: MediaQuery.of(context).size.width,
              height: 178,
              color: white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                child: Text(
                  'Наши партнеры обеспечивают лучшие условия финансирования для клиентов.',
                  style: TextStyle(
                    fontSize: 23,
                    color: black,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 178,
              color: white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                child: Text(
                  'Скорость подключения к платформе — это быстрый и удобный процесс.',
                  style: TextStyle(
                    fontSize: 23,
                    color: black,
                  ),
                ),
              ),
            ),
            // Второй контейнер с уникальным текстом
            Container(
              width: MediaQuery.of(context).size.width,
              height: 178,
              color: white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                child: Text(
                  'Обработка заявок занимает минимальное время и гарантирует результат.',
                  style: TextStyle(
                    fontSize: 23,
                    color: black,
                  ),
                ),
              ),
            ),
            // Третий контейнер с уникальным текстом
            Container(
              width: MediaQuery.of(context).size.width,
              height: 178,
              color: white,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
                child: Text(
                  'Наши партнеры обеспечивают лучшие условия финансирования для клиентов.',
                  style: TextStyle(
                    fontSize: 23,
                    color: black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
