import 'package:flutter/material.dart';

///* Создает виджет текстового поля с настройками.
///
///* Этот универсальный метод создает текстовое поле (`TextFormField`) с возможностью
///* настройки стилей, подсказки, валидатора и других параметров.
///
///* Параметры:
///* - [numberForTopPadding]: Отступ сверху внутри текстового поля (по умолчанию 0).
///* - [labelText]: Метка для текстового поля (обязательный параметр).
///* - [controller]: Контроллер для управления текстом в текстовом поле (обязательный параметр).
///* - [hintText]: Подсказка, отображаемая внутри текстового поля (обязательный параметр).
///* - [cursorColor]: Цвет курсора в текстовом поле (обязательный параметр).
///* - [keyboardType]: Тип клавиатуры для ввода текста (по умолчанию `TextInputType.text`).
///* - [maxLines]: Максимальное количество строк в текстовом поле (опционально).
///* - [validator]: Функция для валидации введенных данных (опционально).
///
///* Возвращает:
/// - Виджет [Widget], который представляет текстовое поле с настроенными стилями и поведением.
///
///* Пример использования:
///* ```dart
///* final controller = TextEditingController();
///* buildTextFieldForCheckVin(
///*   labelText: "Введите VIN",
///*   controller: controller,
///*   hintText: "Пример: 1HGCM82633A123456",
///*   cursorColor: Colors.blue,
///*   keyboardType: TextInputType.text,
///*   maxLines: 1,
///*   validator: (value) {
///*     if (value == null || value.isEmpty) {
///*       return "Поле не может быть пустым";
///*     }
///*     return null;
///*   },
///* );
///* ```

Widget buildTextFieldForCheckVin({
  double numberForTopPadding = 0,
  required String labelText,
  required TextEditingController controller,
  required String hintText,
  required Color cursorColor,
  TextInputType keyboardType = TextInputType.text,
  int? maxLines,
  String? Function(String?)? validator,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'SF-Pro-Display',
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TextFormField(
            controller: controller,
            cursorColor: cursorColor,
            style: const TextStyle(
              fontSize: 15,
            ),
            maxLines: maxLines,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding:
                  EdgeInsets.only(left: 20, top: numberForTopPadding),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: cursorColor), //* Нормальный стиль
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: cursorColor,
                  width: 2.0,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: cursorColor), //* Оставляем стиль
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: cursorColor,
                  width: 2.0,
                ),
              ),
              errorStyle: const TextStyle(
                fontSize: 14,
                color: Colors.red, //* Цвет сообщения об ошибке
              ), // Сообщение об ошибке
            ),
            validator: validator,
          ),
        ),
      ],
    ),
  );
}
