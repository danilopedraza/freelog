import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freelog',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Freelog'),
    );
  }
}

class ExerciseList {
  get content => const Text("Presiona el botón para añadir un ejercicio.");
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_left)),
              const Expanded(child: Center(child: Text("Hoy"))),
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_right)),
            ],
          ),
          // Container(
          //   color: const Color.fromARGB(255, 204, 204, 204),
          //   margin: const EdgeInsets.all(10.0),
          //   padding: const EdgeInsets.all(10.0),
          //   child: const Column(children: [
          //     Row(
          //       children: [
          //         Text("Sentadilla"),
          //         Spacer(),
          //       ],
          //     ),
          //     Divider(
          //       color: Colors.black,
          //     ),
          //     Row(
          //       children: [Text("150kg"), Spacer(), Text("2 repeticiones")],
          //     )
          //   ]),
          // ),
          Expanded(
              child: Center(
            child: ExerciseList().content,
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
