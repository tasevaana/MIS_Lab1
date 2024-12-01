import 'package:flutter/material.dart';
import 'package:lab1/screens/details.dart';
import 'package:lab1/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Makeup site',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/details": (context) => const Details(),
      },
    );
  }
}