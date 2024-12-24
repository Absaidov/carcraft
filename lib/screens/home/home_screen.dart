// import 'package:carcraft/main.dart';
import 'package:carcraft/constants/constants.dart';
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
                color: gray,
              ),
              child: const Text(
                'Меню',
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 44,
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
                context.go('/products');
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_balance),
              title: const Text('Банкам'),
              onTap: () {
                context.go('/banks');
              },
            ),
            ListTile(
              leading: const Icon(Icons.car_crash),
              title: const Text('Автосалонам'),
              onTap: () {
                context.go('/carRoomShow');
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_balance_wallet),
              title: const Text('Инвесторам'),
              onTap: () {
                context.go('/investors');
              },
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text('Наша команда'),
              onTap: () {
                Navigator.pop(context); // Закрываем Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.feed),
              title: const Text('Новости'),
              onTap: () {
                Navigator.pop(context); // Закрываем Drawer
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
