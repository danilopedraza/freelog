import 'package:sqflite/sqflite.dart';

class Service {
  final Database database;

  Service(this.database);

  static Future<Service> withDB() async => Service(await openOrCreateDB());

  static Future<Database> openOrCreateDB() async => openDatabase(
        'freelog.db',
        version: 1,
        onCreate: (db, version) => db.execute(
            'CREATE TABLE TRAINING_SESSION (id INTEGER PRIMARY KEY, date TEXT)'),
      );
}
