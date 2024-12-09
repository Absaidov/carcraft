// import 'package:carcraft/constants/constants.dart';
// import 'package:flutter/material.dart';
// import 'dart:math'; // Для работы с углами

// class Speedometer extends StatefulWidget {
//   const Speedometer({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _SpeedometerState createState() => _SpeedometerState();
// }

// class _SpeedometerState extends State<Speedometer>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();

//     // Инициализация AnimationController, который будет управлять анимацией
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 3), // Длительность одного полного цикла
//     );

//     // Настраиваем анимацию на изменение значений от 0 до 180 (км/ч)
//     _animation = Tween<double>(begin: 75, end: 200).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.bounceOut,
//       ),
//     );

//     // Запускаем анимацию с повтором вперед и назад (туда и обратно)
//     _controller.repeat(reverse: true);
//   }

//   @override
//   void dispose() {
//     _controller.dispose(); // Освобождаем ресурсы
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         AnimatedBuilder(
//           animation: _animation, // Используем текущую анимацию
//           builder: (context, child) {
//             return CustomPaint(
//               painter:
//                   SpeedometerPainter(_animation.value), // Отрисовка спидометра
//               size: const Size(300, 300), // Размер полукруга (ширина и высота)
//             );
//           },
//         ),
//         const SizedBox(height: 71),
//         // Text(
//         //   '${_animation.value.toInt()} km/h', // Отображение текущей скорости
//         //   style: const TextStyle(fontSize: 24),
//         // ),
//       ],
//     );
//   }
// }

// class SpeedometerPainter extends CustomPainter {
//   final double speed; // Текущая скорость

//   SpeedometerPainter(this.speed);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(0, size.height); // Центр полукруга (вправо)
//     final radius = size.width; // Радиус полукруга

//     final angle = (speed / 180) * pi; // Преобразуем скорость в угол (от 0 до π)
//     final Paint speedometerPaint = Paint()
//       ..color = greenPhone
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 3;

//     final Paint needlePaint = Paint()
//       ..color = greenPhone
//       ..strokeWidth = 10
//       ..strokeCap = StrokeCap.round;

//     // Рисуем полукруг спидометра (арка)
//     canvas.drawArc(
//       Rect.fromCircle(center: Offset(15, size.height), radius: radius),
//       pi, // Начальный угол (180 градусов)
//       pi, // Рисуем полукруг (180 градусов)
//       false,
//       speedometerPaint,
//     );

//     // Рисуем стрелку
//     final needleEnd = Offset(
//       center.dx + radius * 0.7 * cos(pi + angle), // Угол для стрелки
//       center.dy + radius * 0.7 * sin(pi + angle),
//     );
//     canvas.drawLine(center, needleEnd, needlePaint);

//     // // Рисуем отметки на спидометре (каждые 20 км/ч)
//     // for (int i = 0; i <= 180; i += 20) {
//     //   final tickAngle = (i / 180) * pi; // Угол отметки
//     //   final tickStart = Offset(
//     //     center.dx + (radius - 15) * cos(pi + tickAngle),
//     //     center.dy + (radius - 15) * sin(pi + tickAngle),
//     //   );
//     //   final tickEnd = Offset(
//     //     center.dx + radius * cos(pi + tickAngle),
//     //     center.dy + radius * sin(pi + tickAngle),
//     //   );
//     //   canvas.drawLine(tickStart, tickEnd, speedometerPaint);
//     // }

//     // for (int i = 70; i <= 180; i += 20) {
//     //   // Начинаем с 70 км/ч
//     //   final tickAngle =
//     //       ((i - 70) / (180 - 70)) * pi; // Рассчитываем угол для меток
//     //   final tickStart = Offset(
//     //     center.dx + (radius - 15) * cos(tickAngle),
//     //     center.dy - (radius - 15) * sin(tickAngle),
//     //   );
//     //   final tickEnd = Offset(
//     //     center.dx + radius * cos(tickAngle),
//     //     center.dy - radius * sin(tickAngle),
//     //   );
//     //   canvas.drawLine(tickStart, tickEnd, speedometerPaint);
//     // }

//     // // Рисуем маленькие квадраты между большими отметками (каждые 10 км/ч)
//     // final Paint smallSquarePaint = Paint()
//     //   ..color = greenPhone
//     //   ..style = PaintingStyle.fill;

//     // for (int i = 10; i <= 170; i += 20) {
//     //   final smallSquareAngle = (i / 180) * pi; // Угол для маленького квадрата
//     //   final squareCenter = Offset(
//     //     center.dx + (radius - 15) * cos(smallSquareAngle),
//     //     center.dy - (radius - 15) * sin(smallSquareAngle),
//     //   );
//     //   const squareWidth = 5.0; // Размер квадрата
//     //   const squareHeight = 5.0; // Размер квадрата
//     //   final squareRect = Rect.fromCenter(
//     //     center: squareCenter,
//     //     width: squareWidth,
//     //     height: squareHeight,
//     //   );

//     //   // Рисуем маленький квадрат
//     //   canvas.drawRect(squareRect, smallSquarePaint);
//     // }

//     final Paint smallSquarePaint = Paint()
//       ..color = Colors.blue
//       ..style = PaintingStyle.fill;

//     final Paint bigSquarePaint = Paint()
//       ..color = Colors.red
//       ..style = PaintingStyle.fill;

// // Рисуем квадраты каждые 5 км/ч, начиная с 70 км/ч до 180 км/ч
//     for (int i = 70; i <= 180; i += 5) {
//       final squareAngle = ((i - 70) / (180 - 70)) * pi; // Угол для квадратов
//       final squareCenter = Offset(
//         center.dx + (radius - 25) * cos(squareAngle),
//         center.dy - (radius - 25) * sin(squareAngle),
//       );

//       // Размеры квадратов
//       final double squareSize = (i % 20 == 0)
//           ? 10.0
//           : 5.0; // Большие каждые 20 км/ч, маленькие каждые 5 км/ч

//       // Устанавливаем цвет: большие красные, маленькие синие
//       final squarePaint = (i % 20 == 0) ? bigSquarePaint : smallSquarePaint;

//       // Создаем квадрат
//       final squareRect = Rect.fromCenter(
//         center: squareCenter,
//         width: squareSize, // Ширина квадрата
//         height: squareSize, // Высота квадрата
//       );

//       // Рисуем квадрат
//       canvas.drawRect(squareRect, squarePaint);
//     }
//   }

//   @override
//   bool shouldRepaint(SpeedometerPainter oldDelegate) {
//     return oldDelegate.speed !=
//         speed; // Перерисовываем только при изменении скорости
//   }
// }
