//* Проверяем ввел ли пользователь имя
String? validateName(String? name) {
  if (name == null || name.isEmpty) {
    return 'Введите имя';
  }
  return null;
}

//* Проверяем ввел ли пользователь телефон
String? validatePhone(String? phone) {
  if (phone == null || phone.isEmpty) {
    return 'Введите номер телефона';
  }
  return null;
}

//* Проверяем ввел ли пользователь валидный e-mail с помощью регулярный выражений
bool validateEmail(String email) {
  if (email.isEmpty) {
    return false;
  }
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  return emailRegex.hasMatch(email);
}

//* Проверяем e-mail введенный пользователем
String? validateEmailField(String? email) {
  if (email == null || email.isEmpty) {
    return 'Введите адрес электронной почты';
  }
  if (!validateEmail(email)) {
    return 'Введите корректный email';
  }
  return null;
}

//* Проверяем ввел ли пользователь комментарий
String? validateComment(String? comment) {
  if (comment == null || comment.isEmpty) {
    return 'Введите комментарий';
  }
  return null;
}
