import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class FormDataProvider with ChangeNotifier {
  final nameController = TextEditingController();
  final phoneController = MaskedTextController(mask: '+7 (000) 000-00-00');
  final emailController = TextEditingController();
  final commentController = TextEditingController();

  // Получаем данные из формы
  String get name => nameController.text;
  String get phone => phoneController.text;
  String get email => emailController.text;
  String get comment => commentController.text;

  // Очистка всех полей
  void clearFields() {
    nameController.clear();
    phoneController.clear();
    emailController.clear();
    commentController.clear();
    notifyListeners();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    commentController.dispose();
    super.dispose();
  }
}
