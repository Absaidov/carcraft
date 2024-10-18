import 'package:carcraft/constants/constants.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const CarCraft());
}

class CarCraft extends StatelessWidget {
  const CarCraft({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Microsoft',
          scaffoldBackgroundColor: blue,
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: gray,
            onPrimary: gray,
            secondary: gray,
            onSecondary: gray,
            error: red,
            onError: red,
            surface: gray,
            onSurface: white,
          )),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
