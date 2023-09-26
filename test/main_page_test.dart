import 'package:freelog/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ExerciseList", () {
    test("should start with a help message", () {
      expect(ExerciseList().content.data,
          "Presiona el botón para añadir un ejercicio.");
    });
  });
}
