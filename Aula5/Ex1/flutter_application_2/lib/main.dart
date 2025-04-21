import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridPage(), 
    );
  }
}

class MyGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Image.network('https://gru.ifsp.edu.br/images/phocagallery/galeria2/image03_grd.png', fit: BoxFit.cover),
          Image.network('https://static.vecteezy.com/ti/fotos-gratis/t2/36324708-ai-gerado-cenario-do-uma-tigre-caminhando-dentro-a-floresta-foto.jpg', fit: BoxFit.cover),
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSorrJGg54ep7K0-I_T2JGu0v0Zf9n48hOuww&s', fit: BoxFit.cover),
          Image.network('https://static.vecteezy.com/ti/fotos-gratis/t2/41436456-ai-gerado-cinematografico-imagem-do-uma-leao-dentro-uma-natureza-panorama-foto.jpg', fit: BoxFit.cover),
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmJ1Es2qRglyn_0dMp-4YiNRfvdN52ULXdpQ&s', fit: BoxFit.cover),
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUFt-ajxrhZNKzcCjSm2pwdgtG6iQKnoKRKQ&s', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
