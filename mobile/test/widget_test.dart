// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:mobile/screens/home/database_section/check_vin/validators.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// import '../lib/screens/home/database_section/check_vin/validators.dart';

// import 'package:mobile/main.dart';

void main() {
  group('Группа валидации имени', () {
    test('Если пользователь ввел данные вернется НИЛ', () {
      expect(validateName('Jamal Absaidov'), null);
    });
    test('Если пользователь не ввел данные выйдет ошибка ', () {
      expect(validateName(''), 'Введите имя');
    });
    test('Если в форме будет NULL', () {
      expect(validateName(null), 'Введите имя');
    });
  });
}
