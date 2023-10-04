import 'package:flutter_test/flutter_test.dart';
import 'package:freelog/db.dart';

void main() {
  group('The Database object', () {
    test('Should be unique', () {
      expect(identical(Database(), Database()), equals(true));
    });
  });
}
