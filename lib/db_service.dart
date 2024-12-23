import 'package:postgres/postgres.dart';

class DatabaseService {
  late PostgreSQLConnection _connection;

  Future<void> connect() async {
    _connection = PostgreSQLConnection(
      'rc1b-xa7a3hxhxpf657kk.mdb.yandexcloud.net',
      6432, //* порт БД
      'form_app_db',
      username: 'form_user_db',
      password: 'lexus550absaidov',
      useSSL: true, //* шифрование подключения
    );
    await _connection.open();
  }

  Future<void> insertFormData(
      String name, String phone, String email, String comment) async {
    const query = '''
      INSERT INTO form_data (name, phone, email, comment)
      VALUES (@name, @phone, @email, @comment);
    ''';
    await _connection.query(
      query,
      substitutionValues: {
        'name': name,
        'phone': phone,
        'email': email,
        'comment': comment,
      },
    );
  }

  Future<void> disconnect() async {
    await _connection.close();
  }
}
