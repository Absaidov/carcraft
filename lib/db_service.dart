import 'package:postgres/postgres.dart';

/* 
*	•	Это определение класса DatabaseService, 
*     который инкапсулирует логику для подключения и работы с базой данных PostgreSQL.
*	•	В классе создается приватная переменная _connection, 
*     которая будет использоваться для хранения соединения с базой данных.
*/
class DatabaseService {
  late PostgreSQLConnection _connection;

/*
*	•	Метод connect выполняет асинхронное подключение к базе данных PostgreSQL.
*	•	Здесь создается объект подключения PostgreSQLConnection с указанием хоста (адрес сервера), порта (6432), 
*     имени базы данных (_____), имени пользователя (_____), пароля и 
*     параметра для использования SSL-соединения (для шифрования данных при передаче).
*	•	Метод open() открывает соединение с базой данных.
*/

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

/*
*	•	Метод insertFormData принимает данные (имя, телефон, email, комментарий) и вставляет 
*     их в таблицу form_data базы данных.
*	•	Для выполнения запроса используется SQL-запрос с параметризированными значениями 
*     (вместо прямого подставления значений, используются параметры: @name, @phone, и так далее).
*	•	Метод query выполняет запрос к базе данных, а substitutionValues передает значения для этих параметров.
*/

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

// * 	•	Метод disconnect закрывает соединение с базой данных, вызывая метод close() на объекте _connection.
  Future<void> disconnect() async {
    await _connection.close();
  }
}
