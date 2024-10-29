import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/screens/home/database_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 710,
      padding: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Positioned(
            left: -150,
            top: 290,
            child: SvgPicture.asset(
              'assets/apped_new2.svg',
              fit: BoxFit.cover,
              semanticsLabel: 'Background SVG',
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
                      ElevatedButton(
                        onPressed: () {
                          // Обработчик нажатия
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: grayBTN,
                          minimumSize: const Size(170, 55), // Размер кнопки
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          elevation: 0, // Без тени, как в обычном контейнере
                        ),
                        child: Text(
                          'Банкам',
                          style: TextStyle(color: grayBTNFont, shadows: [
                            Shadow(
                              color: black,
                              offset: const Offset(0.4, 0.4),
                            )
                          ]),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Обработчик нажатия
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DataBaseSection()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: grayBTN,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 170,
                          height: 55,
                          alignment: Alignment.center,
                          child: Text(
                            'Автосалонам',
                            style: TextStyle(color: grayBTNFont, shadows: [
                              Shadow(
                                color: black,
                                offset: const Offset(0.4, 0.4),
                              )
                            ]),
                          ),
                        ),
                        // style: ElevatedButton.styleFrom(
                        //   backgroundColor: grayBTN,
                        //   minimumSize: const Size(170, 55),
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(5),
                        //   ),
                        //   elevation: 0,
                        // ),
                        // child: Text(
                        //   'Автосалонам',
                        //   style: TextStyle(color: grayBTNFont),
                        // ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Обработчик нажатия
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: grayBTN,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            width: 170,
                            height: 55,
                            alignment: Alignment.center,
                            child: Text(
                              'Инвесторам',
                              style: TextStyle(color: grayBTNFont, shadows: [
                                Shadow(
                                  color: black,
                                  offset: const Offset(0.4, 0.4),
                                )
                              ]),
                            ),
                          ),

                          // style: ElevatedButton.styleFrom(
                          //   backgroundColor: grayBTN,
                          //   minimumSize: const Size(170, 55),
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(5),
                          //   ),
                          //   elevation: 0,
                          // ),
                          // child: Text(
                          //   'Инвесторам',
                          //   style: TextStyle(color: grayBTNFont),
                          // ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Обработчик нажатия
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: grayBTN,
                            minimumSize: const Size(170, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'Проверить VIN',
                            style: TextStyle(color: grayBTNFont, shadows: [
                              Shadow(
                                color: black,
                                offset: const Offset(0.4, 0.4),
                              )
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
