import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:logger/web.dart';

class ApiService {
  final String baseUrl = 'http://localhost:8080';

  Future<void> sendFormData({
    required String name,
    required String phone,
    required String email,
    required String comment,
  }) async {
    var logger = Logger();
    final url = Uri.parse('$baseUrl/api/form-data');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'phone': phone,
        'email': email,
        'comment': comment,
      }),
    );
    if (response.statusCode == 200) {
      logger.i('Данные успешно отправлены!');
    } else {
      logger.e('Ошибка: ${response.body}');
    }
  }
}
