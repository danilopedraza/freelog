import 'package:flutter/material.dart';
import 'package:freelog/main_page/screen.dart';

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
              exerciseName: 'Sentadilla',
              work: [
                RepSet(reps: 5, load: 100),
                RepSet(reps: 5, load: 100),
                RepSet(reps: 5, load: 100),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.brown,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
