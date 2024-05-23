import 'package:flutter/material.dart';
import 'mapa1.dart';
import 'mapa2.dart';
import 'mapa3.dart';
import 'tela1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP MAPS',
      initialRoute: '/',
      routes: { '/': (context) => const Tela1(),
        '/mapa1': (context) => const Mapa1(),
        '/mapa2': (context) => const Mapa2(),
        '/mapa3': (context) => const Mapa3(),
      },
    );
  }
}