import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          title: Center(
            child: Text(
              "Exemplo Flutter Ex2",
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Text(
              'Hello World',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 60),

            TextButton(
              onPressed: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('pressionado')),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue[800],
              ),
              child: Text(
                'Botão',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
