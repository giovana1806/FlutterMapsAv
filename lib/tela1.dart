import 'package:flutter/material.dart';
import 'mapa1.dart';
import 'mapa2.dart';
import 'mapa3.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP MAPAS'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 250, 10, 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('MAPA 1'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mapa1');
                  },
                ),
                ElevatedButton(
                  child: const Text('MAPA 2'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mapa2');
                  },
                ),
                ElevatedButton(
                  child: const Text('MAPA 3'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mapa3');
                  },
                ),
              ]
          )
      ),
    );
  }
}