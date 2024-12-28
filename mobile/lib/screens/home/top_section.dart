import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:permission_handler/permission_handler.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});
  // * Временно закоментировал код, где приложение дополнительно запрашивает разрешение
  // * на доступ к приложению ЗВОНОК. На Android работает, на iPhone нет.
  // Future<void> _makePhoneCall(String phoneNumber) async {
  //   var logger = Logger();
  //   final Uri telUri = Uri(
  //     scheme: 'tel',
  //     path: phoneNumber,
  //   );

  //   // Проверка разрешения
  //   PermissionStatus status = await Permission.phone.status;
  //   if (!status.isGranted) {
  //     logger.i("Запрос разрешения на звонок");
  //     status = await Permission.phone.request();
  //   }

  //   if (status.isGranted) {
  //     try {
  //       logger.i("Попытка позвонить на номер: $phoneNumber");

  //       // Проверка, можно ли запустить URL
  //       if (await canLaunchUrl(telUri)) {
  //         logger.i("Выполняется звонок на номер: $phoneNumber");
  //         await launchUrl(telUri); // Запуск URL
  //       } else {
  //         logger.e("Не удалось найти обработчик для номера: $phoneNumber");
  //       }
  //     } catch (e) {
  //       logger.e("Ошибка при попытке позвонить: $e");
  //     }
  //   } else {
  //     logger.e("Разрешение на звонок не предоставлено");
  //   }
  // }

  // * Временное решение, чтобы функция звонка работала на всех устройствах
  Future<void> _makePhoneCall(String phoneNumber) async {
    var logger = Logger();
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(launchUri)) {
      logger.i('Пытаюсь совершить звонок на номер: $phoneNumber');
      await launchUrl(launchUri);
    } else {
      logger.i(
          'Не удалось совершить звонок. Возможно, телефонные функции не разрешены.');
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
                    onTap: () => _makePhoneCall('+74959222020'),
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
