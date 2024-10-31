import 'package:flutter/material.dart';
import 'package:carcraft/constants/constants.dart';

// Функция для создания настраиваемой кнопки с текстом и навигацией с эффектом нажатия
Widget buildButton(
  BuildContext context, {
  required String text,
  required Widget destination,
}) {
  return _ColorChangingButton(
    text: text,
    destination: destination,
  );
}

class _ColorChangingButton extends StatefulWidget {
  final String text;
  final Widget destination;

  const _ColorChangingButton({
    required this.text,
    required this.destination,
  });

  @override
  __ColorChangingButtonState createState() => __ColorChangingButtonState();
}

class __ColorChangingButtonState extends State<_ColorChangingButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true; // Устанавливаем состояние нажатия
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false; // Возвращаем состояние при отпускании
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget.destination),
        );
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false; // Возвращаем состояние при отмене
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200), // Длительность анимации
        decoration: BoxDecoration(
          color: _isPressed ? greenPhone : grayBTN, // Цвет фона при нажатии
          borderRadius: BorderRadius.circular(5.0),
        ),
        width: 195.0,
        height: 55.0,
        alignment: Alignment.center,
        child: Text(
          widget.text,
          style: TextStyle(
            color: _isPressed ? white : grayBTNFont,
          ),
        ),
      ),
    );
  }
}
