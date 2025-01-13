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
  //* Группа тестировании экрана, где вносят имя, при регистрации заявки
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
  //* Группа тестировании экрана, где вносят телефонный номер, при регистрации заявки
  group('Группа валидации телефонного номера', () {
    test('Если пользователь ввел телефонный номер вернется НИЛ', () {
      expect(validatePhone('+7_999_999_99_99'), null);
    });
    test('Если пользователь не ввел телефонный номер', () {
      expect(validatePhone(''), 'Введите номер телефона');
    });
    test('Если в форме будет NULL', () {
      expect(validatePhone(null), 'Введите номер телефона');
    });
  });

  //* Группа тестировании экрана, где вносят электронную почту, при регистрации заявки
  group('Группа тестирования электронной почты', () {
    test('если пользователь ввел верную электронную почту', () {
      expect(validateEmailField('testing@mail.com'), null);
    });
    test('Если пользователь ввел не коректную электронную почту', () {
      expect(validateEmailField('testing'), 'Введите корректный email');
    });
    test('Если пользователь не ввел данные в поле E-mail', () {
      expect(validateEmailField(''), 'Введите адрес электронной почты');
    });
    test('Если в поле значение NULL', () {
      expect(validateEmailField(null), 'Введите адрес электронной почты');
    });
  });
}
