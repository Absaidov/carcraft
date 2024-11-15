import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logger/web.dart';
import 'package:url_launcher/url_launcher.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  // Функция для звонка
  void _makePhoneCall(String phoneNumber) async {
    // Создаём экземпляр логгера
    var logger = Logger();
    final Uri telUri = Uri(scheme: 'tel', path: phoneNumber);
    try {
      logger.i(
          "Попытка позвонить на номер: $phoneNumber"); // Логируем попытку звонка

      // Проверка, можно ли запустить URL
      if (await canLaunchUrl(telUri)) {
        logger.i(
            "Открытие приложения для звонка на номер: $phoneNumber"); // Логируем успешный запуск
        // Используйте launchUrl с mode
        await launchUrl(telUri, mode: LaunchMode.externalApplication);
      } else {
        logger.e(
            "Не удалось запустить номер: $phoneNumber"); // Логируем ошибку, если нельзя запустить номер
        throw 'Could not launch $phoneNumber';
      }
    } catch (e) {
      logger.e("Ошибка при попытке позвонить: $e"); // Логируем ошибку
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                // Открываем боковое меню
                Scaffold.of(context).openDrawer();
              },
              child: SizedBox(
                width: 40,
                height: 35,
                child: SvgPicture.asset(
                  'assets/icons/menu-svgrepo-com.svg',
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 30),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: SvgPicture.asset(
                      'assets/icons/tel.svg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        _makePhoneCall('+74959222020'), // Номер телефона
                    child: const Text(
                      '+7 (495) 922-20-20',
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Display',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
