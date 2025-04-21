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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutTutorial(),
    );
  }
}

class LayoutTutorial extends StatelessWidget {
  const LayoutTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Tutorial'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.network(
            'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTvqrsXVzI9HPCycfK95DlpfNuw5JRdoxU078ZCluxVqiYYJkVQ', // Coloque uma imagem em assets/images/lake.jpg
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }

  Widget get titleSection {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Nome do lugar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'cidade/estado/pais',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const SizedBox(width: 4),
          const Text('5'),
        ],
      ),
    );
  }

  Widget get buttonSection {
    Color color = const Color.fromARGB(255, 123, 0, 121);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'LIGAR'),
        _buildButtonColumn(color, Icons.near_me, 'ROTAS'),
        _buildButtonColumn(color, Icons.share, 'COMPARTILHAR'),
      ],
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget get textSection {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
      'Texto descrição do lugar',
      
        softWrap: true,
      ),
    );
  }
}
