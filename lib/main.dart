import 'package:dream_app/src/ui/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dream App',
      theme: ThemeData(
      ),
      home: const WelcomePage(),
    );
  }
}
