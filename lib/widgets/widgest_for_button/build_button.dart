import 'package:flutter/material.dart';
import 'package:carcraft/constants/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../provider/button_provider.dart';
// import 'button_provider.dart';

// Функция для создания настраиваемой кнопки с текстом и навигацией с эффектом нажатия
Widget buildButton(
  BuildContext context, {
  required String text,
  required String page,
}) {
  return ChangeNotifierProvider(
    create: (_) => ButtonProvider(),
    child: ColorChangingButton(
      text: text,
      page: page,
    ),
  );
}

class ColorChangingButton extends StatelessWidget {
  final String text;
  final String page;

  const ColorChangingButton({
    super.key,
    required this.text,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ButtonProvider>(context);
    final isPressed =
        context.watch<ButtonProvider>().isPressed; // Слушаем состояние

    return GestureDetector(
      onTapDown: (_) => context.read<ButtonProvider>().setPressed(true),
      onTapUp: (_) {
        context.read<ButtonProvider>().setPressed(false);
        context.go(page);
      },
      onTapCancel: () => context.read<ButtonProvider>().setPressed(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isPressed ? greenPhone : grayBTN,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              // spreadRadius: _isHovered ? 5 : 2,
              // blurRadius: _isHovered ? 7 : 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        height: 55.0,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: isPressed ? white : grayBTNFont,
          ),
        ),
      ),
    );
  }
}
