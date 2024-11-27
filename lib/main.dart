import 'package:flutter/material.dart';
import 'screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digicando Wifi Mesh',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.cyan,
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.black, ),
          toolbarHeight: 80,
          centerTitle: true,
          titleSpacing: 2
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
      ),
      home: const HomePage(),
    );
  }
}
