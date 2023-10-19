import 'package:sqflite/sqflite.dart';

class Service {
    final Database database;

    Service(this.database);

    static Future<Service> withDB() async => Service(await openOrCreateDB());

    static Future<Database> openOrCreateDB() async => openDatabase(
        'freelog.db',
        onCreate: (db, version) => db.execute(
            '''
                CREATE TABLE TRAINING_SESSION (
                    id INTEGER PRIMARY KEY, 
                    date TEXT
                )

                CREATE TABLE EXERCISE_EXECUTION (
                    id INTEGER PRIMARY KEY,
                    training_session INTEGER,
                    FOREIGN KEY (training_session) REFERENCES TRAINING_SESSION(id) 
                )
            '''
        ),
    );
}
