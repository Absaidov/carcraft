import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/screens/home/buttons_on_home_screen/banks.dart';
import 'package:carcraft/screens/home/buttons_on_home_screen/car_room_show.dart';
import 'package:carcraft/screens/home/buttons_on_home_screen/check_vin.dart';
import 'package:carcraft/screens/home/buttons_on_home_screen/investors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/home/home_screen.dart';

import 'package:flutter/services.dart';

void main() {
  // Блокируем ориентацию экрана на портретную
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const CarCraft());
  });
}

class CarCraft extends StatelessWidget {
  const CarCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          fontFamily: 'Microsoft',
          scaffoldBackgroundColor: blue,
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: black,
            onPrimary: gray,
            secondary: gray,
            onSecondary: gray,
            error: red,
            onError: red,
            surface: gray,
            onSurface: white,
          ),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: greenPhone, // Цвет курсора
            selectionColor: greenPhone, // Цвет выделенного текста
            selectionHandleColor: white, // Цвет ручки выделения
          )),
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

// GoRouter Навигация по приложению
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'banks',
          builder: (context, state) => const Banks(),
        ),
        GoRoute(
          path: 'carRoomShow',
          builder: (context, state) => const CarRoomShow(),
        ),
        GoRoute(
          path: 'investors',
          builder: (context, state) => const Investors(),
        ),
        GoRoute(
          path: 'checkVin',
          builder: (context, state) => const CheckVin(),
        ),
      ],
    ),
  ],
);
