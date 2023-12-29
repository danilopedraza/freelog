import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'model.g.dart';

@entity
class Exercise {
  @primaryKey
  final int id;

  final String name;
  final String var1;
  final String var2;

  Exercise(
    this.id,
    this.name,
    this.var1,
    this.var2,
  );
}

@entity
class TrainingSession {
  @primaryKey
  final int id;

  final String date;

  TrainingSession(
    this.id,
    this.date,
  );
}

@entity
class ExerciseExecution {
  @primaryKey
  final int id;

  @ForeignKey(
    childColumns: [
      'id',
      'sessionId',
      'exerciseId',
      'var1',
      'var2',
    ],
    parentColumns: [
      'id',
      'date',
    ],
    entity: TrainingSession,
  )
  final int sessionId;
  @ForeignKey(
    childColumns: [
      'id',
      'sessionId',
      'exerciseId',
      'var1',
      'var2',
    ],
    parentColumns: [
      'name',
      'var1',
      'var2',
    ],
    entity: TrainingSession,
  )
  final int exerciseId;
  final int var1;
  final int var2;

  ExerciseExecution(
    this.id,
    this.sessionId,
    this.exerciseId,
    this.var1,
    this.var2,
  );
}

@Database(version: 1, entities: [Exercise, TrainingSession, ExerciseExecution])
abstract class FreelogDatabase extends FloorDatabase {}
