import 'package:freelog/service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

Future main() async {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  setUp(() async => deleteDatabase('freelog.db'));

  tearDownAll(() async => deleteDatabase('freelog.db'));

  group('Service()', () {
    group('.openOrCreateDB()', () {
      test('should create the DB if it is not there', () async {
        await Service.openOrCreateDB();
        expect(await databaseExists('freelog.db'), isTrue);
      });
    });
  });
}
