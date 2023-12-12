import 'package:flutter/material.dart';

class AddWork extends StatelessWidget {
  final String exercise;
  const AddWork({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exercise),
        backgroundColor: Colors.brown,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Variable Primaria',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextField(),
            Text(
              'Variable Secundaria',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextField(),
          ],
        ),
      ),
    );
  }
}
