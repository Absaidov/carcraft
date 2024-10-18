import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

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
                  const Text(
                    '+ 7 (495) 922-20-20',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Display',
                      fontSize: 15,
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
