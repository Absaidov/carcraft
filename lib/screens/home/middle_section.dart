import 'package:carcraft/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            height: 105,
            // color: Colors.white,
            margin: const EdgeInsets.only(bottom: 10),
            child: SvgPicture.asset('assets/icons/logo.svg'),
          ),
          Container(
            height: 150,
            // color: Colors.white,
            child: const Text(
              'Единственная в России онлайн-технология финансирования автомобильного бизнеса',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'SF-Pro-Display',
              ),
            ),
          ),
          Container(
            height: 165,
            width: 545,
            color: Colors.green,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Кнопка 1 нажата!');
                },
                child: Text('Кнопка 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Кнопка 2 нажата!');
                },
                child: Text('Кнопка 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Кнопка 3 нажата!');
                },
                child: Text('Кнопка 3'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Кнопка 4 нажата!');
                },
                child: Text('Кнопка 4'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
