
# Документация для кастомной кнопки с эффектом изменения цвета в Flutter

## Описание
Этот компонент представляет собой кастомную кнопку, которая изменяет цвет фона при нажатии и осуществляет навигацию на другие экраны. Он использует виджеты `StatefulWidget` и `GestureDetector` для обработки взаимодействий пользователя и анимации изменения цвета.

## Импорт библиотек
Для использования кнопки убедитесь, что у вас импортированы необходимые библиотеки:
```dart
import 'package:flutter/material.dart';
import 'package:carcraft/constants/constants.dart';
```
- `flutter/material.dart`: Библиотека для работы с Material Design в Flutter.
- `carcraft/constants/constants.dart`: Файл с определением цветовых констант (например, `grayBTN`, `grayBTNFont`), используемых в проекте.

## Функция `buildButton`
```dart
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
```

### Параметры
- **`BuildContext context`**: Контекст, необходимый для навигации между экранами.
- **`String text`**: Текст, отображаемый на кнопке.
- **`Widget destination`**: Виджет, на который будет происходить переход при нажатии на кнопку.

### Описание
Функция `buildButton` создает виджет `_ColorChangingButton`, передавая ему текст и целевой виджет.

## Класс `_ColorChangingButton`
```dart
class _ColorChangingButton extends StatefulWidget {
  final String text; // Текст на кнопке
  final Widget destination; // Страница назначения

  _ColorChangingButton({
    required this.text,
    required this.destination,
  });

  @override
  __ColorChangingButtonState createState() => __ColorChangingButtonState();
}
```

### Параметры
- **`String text`**: Текст, который будет отображаться на кнопке.
- **`Widget destination`**: Виджет назначения, на который будет происходить переход при нажатии на кнопку.

### Описание
Класс `_ColorChangingButton` расширяет `StatefulWidget` и используется для создания состояния кнопки, позволяя отслеживать, нажата ли она.

## Состояние класса `__ColorChangingButtonState`
```dart
class __ColorChangingButtonState extends State<_ColorChangingButton> {
  bool _isPressed = false; // Состояние кнопки (нажата или нет)

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
          MaterialPageRoute(builder: (context) => widget.destination), // Переход на страницу назначения
        );
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false; // Возвращаем состояние при отмене
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200), // Длительность анимации
        decoration: BoxDecoration(
          color: _isPressed ? Colors.green : grayBTN, // Цвет фона при нажатии
          borderRadius: BorderRadius.circular(5.0), // Закругление углов
        ),
        width: 195.0, // Ширина кнопки
        height: 55.0, // Высота кнопки
        alignment: Alignment.center, // Центрирование текста внутри кнопки
        child: Text(
          widget.text, // Текст на кнопке
          style: TextStyle(
            color: grayBTNFont, // Цвет текста
          ),
        ),
      ),
    );
  }
}
```

### Параметры
- **`bool _isPressed`**: Логическая переменная, которая отслеживает, нажата ли кнопка.

### Описание
- **Метод `build`**: Строит интерфейс кнопки и обрабатывает взаимодействия пользователя.
  - **`GestureDetector`**: Позволяет отслеживать жесты, такие как нажатие и отпускание.
    - **`onTapDown`**: Устанавливает `_isPressed` в `true` при нажатии.
    - **`onTapUp`**: Устанавливает `_isPressed` в `false` при отпускании и выполняет навигацию на страницу назначения.
    - **`onTapCancel`**: Устанавливает `_isPressed` в `false`, если нажатие было отменено.
  - **`AnimatedContainer`**: Используется для плавного изменения цвета кнопки. Длительность анимации составляет 200 миллисекунд.

### Декорация
- **`BoxDecoration`**: Задает стиль контейнера с учетом цвета фона и закругления углов.
  - **`color`**: Устанавливает цвет фона на зеленый, если кнопка нажата, или на `grayBTN` в противном случае.
  - **`borderRadius`**: Закругляет углы кнопки.

## Пример использования
Вот как можно использовать эту кнопку в вашем приложении:
```dart
import 'package:flutter/material.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      },
      body: Center(
        child: buildButton(
          context,
          text: 'Перейти на другую страницу',
          destination: DestinationScreen(),
        ),
      ),
    );
  }
}

class DestinationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Другая страница'),
      },
      body: Center(
        child: Text('Добро пожаловать на другую страницу!'),
      ),
    );
  }
}
```

### Объяснение примера
- **`ExampleScreen`**: Главный экран приложения, на котором находится кнопка.
  - При нажатии на кнопку происходит переход на `DestinationScreen`.
- **`DestinationScreen`**: Целевая страница, куда происходит переход, отображающая текст.

## Заключение
Эта кастомная кнопка позволяет легко организовать навигацию в приложении с эффектом изменения цвета при нажатии. Использование `StatefulWidget` и `GestureDetector` обеспечивает отзывчивый интерфейс и улучшает пользовательский опыт.
