import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:smart_life/views/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Homepage(),
      ),
    );
  }
}
