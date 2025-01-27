// import 'package:mobile/main.dart';
import 'package:mobile/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'middle_section.dart';
import 'top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        //* Содержимое бокового меню, надо изменить под тему приложения
        backgroundColor: grayBTN,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: blue,
              ),
              child: const Text(
                'Меню',
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 54,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.credit_card,
                color: grayBTNFont,
              ),
              title: Text(
                'Продукты',
                style: TextStyle(
                  color: grayBTNFont,
                ),
              ),
              onTap: () {
                context.go(
                    '/products'); //* Переходим на экран с продуктами CarCraft
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance,
                color: grayBTNFont,
              ),
              title: Text(
                'Банкам',
                style: TextStyle(
                  color: grayBTNFont,
                ),
              ),
              onTap: () {
                context
                    .go('/banks'); //* Переходим на экран для преложений банкам
              },
            ),
            ListTile(
              leading: Icon(
                Icons.car_crash,
                color: grayBTNFont,
              ),
              title: Text(
                'Автосалонам',
                style: TextStyle(
                  color: grayBTNFont,
                ),
              ), //* Переходим на экран для преложений автосалонам
              onTap: () {
                context.go('/carRoomShow');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                color: grayBTNFont,
              ),
              title: Text(
                'Инвесторам',
                style: TextStyle(
                  color: grayBTNFont,
                ),
              ), //* Переходим на экран для преложений инвесторам
              onTap: () {
                context.go('/investors');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                color: grayBTNFont,
              ),
              title: Text(
                'Наша команда',
                style: TextStyle(
                  color: grayBTNFont,
                ),
              ),
              onTap: () {
                context.go('/team'); //* Переходим на экран с командой CarCraft
              },
            ),
            ListTile(
              leading: Icon(
                Icons.feed,
                color: grayBTNFont,
              ),
              title: Text(
                'Новости',
                style: TextStyle(
                  color: grayBTNFont,
                ),
              ),
              onTap: () {
                context.go('/news'); //* Переходим на экран с новостями CarCraft
              },
            ),
          ],
        ),
      ),
      body: const SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 8),
          child: Column(
            children: [
              TopSection(),
              MiddleSection(),
            ],
          ),
        ),
      ),
    );
  }
}
