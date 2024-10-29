import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart'; // Импортируем пакет

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  // Функция для звонка
  void _makePhoneCall(String phoneNumber) async {
    final Uri telUri = Uri(scheme: 'tel', path: phoneNumber);
    try {
      if (await canLaunchUrl(telUri)) {
        await launchUrl(telUri);
      } else {
        throw 'Could not launch $phoneNumber';
      }
    } catch (e) {
      print('Error: $e'); // Выводим ошибку в консоль
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 40,
            height: 35,
            child: SvgPicture.asset(
              'assets/icons/menu-svgrepo-com.svg',
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
                        // color: Colors.blue,
                        // decoration: TextDecoration.underline,
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
