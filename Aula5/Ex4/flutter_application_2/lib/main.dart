import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layouts',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
      ),
      home: const ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    final buttonSection = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Cheetah Coding',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        isPortrait
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text('BUTTON 1')),
                  const SizedBox(width: 8),
                  ElevatedButton(onPressed: () {}, child: const Text('BUTTON 2')),
                ],
              )
            : Column(
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text('BUTTON 1')),
                  const SizedBox(height: 8),
                  ElevatedButton(onPressed: () {}, child: const Text('BUTTON 2')),
                ],
              ),
      ],
    );

    final languages = [
      'Dart',
      'JavaScript',
      'PHP',
      'C++',
    ];

    final languageSection = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: languages
          .map((lang) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  color: Colors.grey[800],
                  child: Text(lang, style: const TextStyle(fontSize: 18)),
                ),
              ))
          .toList(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isPortrait
            ? Column(
                children: [
                  buttonSection,
                  const SizedBox(height: 24),
                  Expanded(child: languageSection),
                ],
              )
            : Row(
                children: [
                  Expanded(child: buttonSection),
                  const SizedBox(width: 24),
                  Expanded(child: languageSection),
                ],
              ),
      ),
    );
  }
}
