import 'package:carcraft/widgets/widgest_for_button/build_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: ListView(
        children: [
          Container(
            width: size.width,
            height: size.height,
            padding: const EdgeInsets.only(bottom: 10),
            child: Stack(
              children: [
                Positioned(
                  left: -150,
                  top: 330,
                  child: Lottie.asset(
                    'assets/json/animated_speed.json',
                    fit: BoxFit.cover,
                    // semanticsLabel: 'Background SVG',
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 105,
                      child: SvgPicture.asset('assets/icons/logo.svg'),
                    ),
                    const SizedBox(
                      height: 110,
                      child: Text(
                        'Единственная в России онлайн-технология финансирования автомобильного бизнеса',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SF-Pro-Display',
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildButton(
                              context,
                              text: 'Банкам',
                              page: '/banks',
                            ),
                            buildButton(
                              context,
                              text: 'Автосалонам',
                              page: '/carRoomShow',
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buildButton(
                                context,
                                text: 'Инвесторам',
                                page: '/investors',
                              ),
                              buildButton(
                                context,
                                text: 'Проверить VIN',
                                page: '/checkVin',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
