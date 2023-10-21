import 'package:sqflite/sqflite.dart';

class Service {
  final Database database;

  Service(this.database);

  static Future<Service> withDB() async => Service(await openOrCreateDB());

  static Future<Database> openOrCreateDB() async => openDatabase(
        'freelog.db',
        version: 1,
        onCreate: (db, version) async {
          const stmts = [
            '''
            CREATE TABLE TRAINING_SESSION (
              id INTEGER PRIMARY KEY,
              date TEXT
            );
            ''',
            '''
            CREATE TABLE EXERCISE_EXECUTION(
              id INTEGER PRIMARY KEY,
              training_session INTEGER,
              FOREIGN KEY(training_session) REFERENCES TRAINING_SESSION(id)
            );
            ''',
          ];

          for (final stmt in stmts) {
            await db.execute(stmt);
          }
        },
      );
}
