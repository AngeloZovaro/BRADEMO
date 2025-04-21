import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAB com BottomAppBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FABExample(),
    );
  }
}

class FABExample extends StatefulWidget {
  const FABExample({super.key});

  @override
  State<FABExample> createState() => _FABExampleState();
}

class _FABExampleState extends State<FABExample> {
  bool _showOptions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FAB Menu aparece na tela')),

      body: Stack(
        children: [
          const Center(child: Text('tab 3')),

          if (_showOptions) ...[
            Positioned(
              bottom: 90,
              left: MediaQuery.of(context).size.width / 2 - 25,
              child: Column(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Mensagem selecionada')),
                      );
                    },
                    heroTag: 'msg',
                    tooltip: 'Mensagem',
                    child: const Icon(Icons.message),
                  ),
                  const SizedBox(height: 12),
                  FloatingActionButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Email selecionado')),
                      );
                    },
                    heroTag: 'email',
                    tooltip: 'Email',
                    child: const Icon(Icons.email),
                  ),
                  const SizedBox(height: 12),
                  FloatingActionButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Telefone selecionado')),
                      );
                    },
                    heroTag: 'phone',
                    tooltip: 'Telefone',
                    child: const Icon(Icons.phone),
                  ),
                ],
              ),
            ),
          ]
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showOptions = !_showOptions;
          });
        },
        tooltip: 'Menu',
        child: Icon(_showOptions ? Icons.close : Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.view_module)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.grid_on)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.error)),
          ],
        ),
      ),
    );
  }
}
