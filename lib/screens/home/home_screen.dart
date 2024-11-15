import 'package:flutter/material.dart';
import 'middle_section.dart';
import 'top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Содержимое бокового меню, надо изменить под тему приложения
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Меню',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text('Продукты'),
              onTap: () {
                Navigator.pop(context); // Закрываем Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Банкам'),
              onTap: () {
                Navigator.pop(context); // Закрываем Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Автосалонам'),
              onTap: () {
                Navigator.pop(context); // Закрываем Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Инвесторам'),
              onTap: () {
                Navigator.pop(context); // Закрываем Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Наша команда'),
              onTap: () {
                Navigator.pop(context); // Закрываем Drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
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
