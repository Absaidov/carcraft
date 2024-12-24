import 'package:flutter/material.dart';
import 'package:carcraft/constants/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../provider/button_provider.dart';

///* Создает настраиваемую кнопку с текстом, навигацией и эффектом нажатия.
///
///* Кнопка меняет цвет при нажатии и поддерживает навигацию между страницами,
/// используя [GoRouter].
///
///* Параметры:
///* - [context]: Контекст сборки Flutter.
///* - [text]: Текст, отображаемый на кнопке (обязательный параметр).
///* - [page]: Имя маршрута или путь страницы, на которую будет осуществлена навигация (обязательный параметр).
///
///* Возвращает:
///* - Виджет [Widget], который представляет кнопку с анимацией нажатия.
///
///* Пример использования:
///* ```dart
///* buildButton(
///*   context,
///*   text: "Перейти",
///*   page: "/nextPage",
///* );
///* ```
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

///* Виджет кнопки с анимацией изменения цвета при нажатии.
///
/// [ColorChangingButton] слушает состояние через [Provider] и меняет
///* свой цвет, когда пользователь нажимает или отпускает кнопку.
///
///* Параметры конструктора:
///* - [text]: Текст, отображаемый на кнопке.
///* - [page]: Маршрут, на который будет выполнен переход после нажатия.
///
///* Пример:
///* ```dart
///* ColorChangingButton(
///*   text: "Открыть",
///*   page: "/home",
///*);
///* ```

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
        context.watch<ButtonProvider>().isPressed; //* Слушаем состояние

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
