import 'package:flutter/material.dart';
import 'info.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("15 April 2026"), centerTitle: true),
        backgroundColor: const Color.fromARGB(255, 6, 45, 63),
        body: SafeArea(child: Info()),
      ),
    );
  }
}
