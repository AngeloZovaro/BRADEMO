import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TarefasPage(),
    );
  }
}

class TarefasPage extends StatefulWidget {
  const TarefasPage({super.key});

  @override
  State<TarefasPage> createState() => _TarefasPageState();
}

class _TarefasPageState extends State<TarefasPage> {
  final List<Map<String, dynamic>> tarefas = [
    {'titulo': 'Estudar Flutter', 'concluida': false},
    {'titulo': 'Fazer compras', 'concluida': true},
    {'titulo': 'Ler um livro', 'concluida': false},
    {'titulo': 'Revisar código', 'concluida': true},
  ];

  final TextEditingController _novaTarefaController = TextEditingController();

  void _mostrarTarefasConcluidas() {
    final concluidas = tarefas.where((t) => t['concluida'] == true).toList();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Tarefas Concluídas'),
        content: concluidas.isEmpty
            ? const Text('Nenhuma tarefa concluída.')
            : SizedBox(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: concluidas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.check_circle, color: Colors.green),
                      title: Text(concluidas[index]['titulo']),
                    );
                  },
                ),
              ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fechar'),
          ),
        ],
      ),
    );
  }

  void _mostrarAlerta() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Bem-vindo'),
        content: const Text('Você está no App de Notas de Tarefas'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fechar'),
          ),
        ],
      ),
    );
  }

  void _adicionarTarefa() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Nova Tarefa'),
          content: TextField(
            controller: _novaTarefaController,
            decoration: const InputDecoration(hintText: 'Digite a tarefa'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                _novaTarefaController.clear();
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_novaTarefaController.text.trim().isNotEmpty) {
                  setState(() {
                    tarefas.add({
                      'titulo': _novaTarefaController.text.trim(),
                      'concluida': false,
                    });
                  });
                }
                _novaTarefaController.clear();
                Navigator.pop(context);
              },
              child: const Text('Adicionar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final pendentes = tarefas.where((t) => t['concluida'] == false).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas Pendentes'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton.icon(
              onPressed: _mostrarTarefasConcluidas,
              icon: const Icon(Icons.check),
              label: const Text('Ver tarefas concluídas'),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: pendentes.length,
              itemBuilder: (context, index) {
                final tarefa = pendentes[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                  child: ListTile(
                    leading: Checkbox(
                      value: tarefa['concluida'],
                      onChanged: (value) {
                        setState(() {
                          final originalIndex = tarefas.indexWhere(
                              (t) => t['titulo'] == tarefa['titulo']);
                          tarefas[originalIndex]['concluida'] = value!;
                        });
                      },
                    ),
                    title: Text(tarefa['titulo']),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 20,
            child: FloatingActionButton(
              onPressed: _adicionarTarefa,
              tooltip: 'Adicionar Tarefa',
              child: const Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: _mostrarAlerta,
              tooltip: 'Mostrar Alerta',
              backgroundColor: Colors.orange,
              child: const Icon(Icons.info),
            ),
          ),
        ],
      ),
    );
  }
}
