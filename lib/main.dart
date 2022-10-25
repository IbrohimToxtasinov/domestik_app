import 'package:domestika/screens/crear_ceunte.dart';
import 'package:domestika/screens/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Domestika app',
      theme: ThemeData(
      ),
      home: const Portada(),
    );
  }
}