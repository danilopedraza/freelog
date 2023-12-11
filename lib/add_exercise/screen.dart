import 'package:flutter/material.dart';

class AddExercise extends StatelessWidget {
  const AddExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Añadir ejercicio'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nombre',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Escribe el nombre aquí',
              ),
            ),
            const Text(
              'Categoría',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const DropdownMenu(
              dropdownMenuEntries: [],
              hintText: 'Selecciona una categoría',
            ),
            const Text(
              'Variable principal',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const DropdownMenu(
              dropdownMenuEntries: [],
              hintText: 'Selecciona una variable',
            ),
            const Text(
              'Variable secundaria',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const DropdownMenu(
              dropdownMenuEntries: [],
              hintText: 'Selecciona una variable',
            ),
          ]
              .map((w) => Padding(padding: const EdgeInsets.all(8.0), child: w))
              .toList(),
        ),
      ),
    );
  }
}
