import 'package:flutter/material.dart';
import 'package:http_homework/screens/home.dart';
import 'package:http_homework/screens/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '1': (context) => HomeScreen(),
        '2': (context) => HttpPage(),
      },
    );
  }
}
