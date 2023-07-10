// import 'package:mysql1/mysql1.dart';

// Future<MySqlConnection> createConnection() async {
//   final settings = ConnectionSettings(
//     host: 'localhost',
//     port: 80,
//     user: 'root',
//     password: '',
//     db: 'hackathon',
//   );

//   final connection = await MySqlConnection.connect(settings);
//   return connection;
// }

// Future<List<Map<String, dynamic>>> fetchData() async {
//   final connection = await createConnection();

//   final results = await connection.query('SELECT * FROM your_table');
//   connection.close();

//   return results.toList();
// }

