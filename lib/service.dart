import 'package:sqflite/sqflite.dart';

class Service {
    final Database database;

    Service(this.database);

    static Future<Service> withDB() async => Service(await openOrCreateDB());

    static Future<Database> openOrCreateDB() async => openDatabase(
        'freelog.db',
        onCreate: (db, version) => db.execute(
            'CREATE TABLE TRAINING_SESSIONS (id INTEGER PRIMARY KEY, date TEXT)'
        ),
    );
}
