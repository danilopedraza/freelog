import 'package:freelog/service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future main() async {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  tearDownAll(() {
    // Maybe delete the database here
  });

  group('Service()', () {
    group('.openOrCreateDB()', () {
      test('should create the DB if it is not there', () async {
        await Service.openOrCreateDB();
        expect(await databaseExists('freelog.db'), isTrue);
      });
    });
  });
}
