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
            // margin: const EdgeInsets.only(bottom: 10),
            child: SvgPicture.asset('assets/icons/logo.svg'),
          ),
          Container(
            // color: greenPhone,
            height: 110,
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
            // color: red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: grayBTN,
                      ),
                      width: 170,
                      height: 55,
                      child: Center(
                        child: Text(
                          'Банкам',
                          style: TextStyle(color: grayBTNFont),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: grayBTN,
                      ),
                      width: 170,
                      height: 55,
                      child: Center(
                        child: Text(
                          'Автосалонам',
                          style: TextStyle(color: grayBTNFont),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: grayBTN,
                        ),
                        width: 170,
                        height: 55,
                        child: Center(
                          child: Text(
                            'Инвесторам',
                            style: TextStyle(color: grayBTNFont),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: grayBTN,
                        ),
                        width: 170,
                        height: 55,
                        child: Center(
                          child: Text(
                            'Проверить VIN',
                            style: TextStyle(color: grayBTNFont),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              'assets/images/speedometer.gif',
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
