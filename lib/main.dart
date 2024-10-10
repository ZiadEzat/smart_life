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
      theme: ThemeData(
          primaryColor: Colors.white,
          colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Colors.white, secondary: const Color(0XFF6750A4))),
      home: Scaffold(
        body: Homepage(),
      ),
    );
  }
}
