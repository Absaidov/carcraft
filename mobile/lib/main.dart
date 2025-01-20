import 'package:mobile/constants/constants.dart';
import 'package:mobile/provider/form_data_provider.dart';
import 'package:mobile/screens/home/buttons_on_home_screen/banks.dart';
import 'package:mobile/screens/home/buttons_on_home_screen/car_room_show.dart';
import 'package:mobile/screens/home/buttons_on_home_screen/check_vin.dart';
import 'package:mobile/screens/home/buttons_on_home_screen/investors.dart';
import 'package:mobile/screens/home/buttons_on_home_screen/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/web.dart';
import 'package:provider/provider.dart';

import 'screens/home/home_screen.dart';

import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    var logger = Logger();
    await dotenv.load(
      fileName:
          // '/Users/dzamalabsaidov/vsCodeProjects/carcraft/assets/config/.env',
          '.env',
    ); // Загрузка .env файла
    logger.i("Env loaded successfully");
  } catch (e) {
    throw ("Error loading .env file: $e");
  }

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
    return MultiProvider(
      //* Подключаем провайдеры
      providers: [
        ChangeNotifierProvider(
          create: (context) => FormDataProvider(),
        )
      ],
      //* наш главный виджет MaterialApp и подключенный к нему роутер
      //* для навигации по нашему приложению
      child: MaterialApp.router(
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
              cursorColor: greenPhone, //* Цвет курсора
              selectionColor: greenPhone, //* Цвет выделенного текста
              selectionHandleColor: white, //* Цвет ручки выделения
            )),
        //* убираем надпись DEBUG
        debugShowCheckedModeBanner: false,
        //* передаем конфиг нашего роутера
        routerConfig: _router,
      ),
    );
  }
}

//* GoRouter Навигация по приложению
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
        GoRoute(
          path: 'products',
          builder: (context, state) => const Products(),
        ),
        GoRoute(
          path: 'products',
          builder: (context, state) => const Products(),
        ),
      ],
    ),
  ],
);
