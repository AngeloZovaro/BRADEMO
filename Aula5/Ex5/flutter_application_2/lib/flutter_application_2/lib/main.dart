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
        appBar: AppBar(title: const Text('restrições de layout'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    color: Colors.red,
                    child: const Text(
                      'This is a very long text that won\'t fit the line.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Text(
                  'Goodbye!',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
