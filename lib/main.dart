import 'package:flutter/material.dart';
import 'package:scheki/Pages/Inscription.dart';
import 'package:scheki/Pages/Matiere.dart';
import 'package:scheki/Pages/Redirection.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RedirectionPage(),
      ),
    );
  }
}
