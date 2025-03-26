import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(),
body: Center(
  child: Align(
    alignment: Alignment(-0.5, -0.5),
    child: Container(
      margin: const EdgeInsets.all(10.0),
      color: const Color.fromARGB(255, 255, 0, 0),
      width: 250.0,
      height: 250.0,
      child: Text(
        'Hi Mom',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
      ),
    ),
  ),
),

),
);
}
}