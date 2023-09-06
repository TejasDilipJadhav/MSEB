import 'package:flutter/material.dart';
import 'package:mseb/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: const HomePage(),
          appBar: AppBar(
            title: const Text("MSEB"),
            centerTitle: true,
          ),
        ),
      ),
    );
  }
}
