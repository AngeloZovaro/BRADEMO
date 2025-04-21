import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Tutorial'),
          centerTitle: true,
        ),
        body: const LayoutExample(),
      ),
    );
  }
}

class LayoutExample extends StatelessWidget {
  const LayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Container(
                color: Colors.red,
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'This is a very long text that won\'t fit the line.',
                  style: TextStyle(fontSize: 20),
                  overflow: TextOverflow.ellipsis, // corta com "..."
                  maxLines: 1,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8), // espaço entre os containers
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Goodbye!',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
