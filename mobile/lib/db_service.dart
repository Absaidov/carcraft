import 'package:flutter_dotenv/flutter_dotenv.dart';
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
*	•	Здесь создается объект подключения PostgreSQLConnection с указанием хоста (dbHost), порта (dbPort), 
*     имени базы данных (dbDbname), имени пользователя (dbUser), пароля и 
*     параметра для использования SSL-соединения (для шифрования данных при передаче).
*	•	Метод open() открывает соединение с базой данных.
*/

  Future<void> connect() async {
    //* Получение значений переменных из dotenv
    String? dbUser = dotenv.env['DB_USER'];
    String? dbPassword = dotenv.env['DB_PASSWORD'];
    String? dbHost = dotenv.env['DB_HOST'];
    String? dbDbname = dotenv.env['DB_DBNAME'];
    String? dbPort = dotenv.env['DB_PORT'];

    //* Проверка обязательных параметров на значение null
    if (dbUser == null ||
        dbPassword == null ||
        dbHost == null ||
        dbDbname == null ||
        dbPort == null) {
      throw Exception(
          "One or more database configuration variables are missing in the .env file.");
    }

    //* Попытка преобразования переменной строки порта в int
    int port;
    try {
      port = int.parse(dbPort);
    } catch (e) {
      throw Exception("DB_PORT must be a valid integer. Found: $dbPort");
    }
    //* передача всех данных на соединение с БД
    _connection = PostgreSQLConnection(
      dbHost, //* наш хост
      port, //* преобразованный dbPort порт БД
      dbDbname, //* наименование таблицы
      username: dbUser, //* имя пользователя
      password: dbPassword, //* пароль
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
