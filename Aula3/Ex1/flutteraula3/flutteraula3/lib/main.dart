import 'package:flutteraula3/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen()
    );
  }
}
class HomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
body: Center(
child: ElevatedButton(
onPressed: () {
},
child: const Text("Random"),
),
),
);
}
}
