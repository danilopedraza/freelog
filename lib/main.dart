import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Freelog'),
          backgroundColor: Colors.brown,
        ),
        body: const MainPage(
          exercises: [
            ExerciseSession(
              exerciseName: 'Squat',
              work: [
                RepSet(reps: 5, load: 100),
                RepSet(reps: 5, load: 100),
                RepSet(reps: 5, load: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final List exercises;

  const MainPage({super.key, required this.exercises});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            'Today\'s workout',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        ...exercises,
      ],
    );
  }
}

class ExerciseSession extends StatelessWidget {
  final String exerciseName;
  final List work;

  const ExerciseSession(
      {super.key, required this.exerciseName, required this.work});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exerciseName,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            ...work,
          ],
        ),
      ),
    );
  }
}

class RepSet extends StatelessWidget {
  final int reps;
  final int load;

  const RepSet({super.key, required this.reps, required this.load});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$reps reps'),
        const Spacer(),
        Text('$load kg'),
      ],
    );
  }
}
