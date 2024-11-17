import 'package:flutter/material.dart';

// Универсальная функция для создания текстового поля с параметрами
Widget buildTextFieldForCheckVin({
  double numberForTopPadding = 0,
  required String labelText,
  required TextEditingController controller,
  required String hintText,
  required Color cursorColor,
  TextInputType keyboardType = TextInputType.text,
  int? maxLines,
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
          child: TextField(
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
                borderSide: BorderSide(color: cursorColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: cursorColor,
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}