import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const DigaxionApp());
}

class DigaxionApp extends StatelessWidget {
  const DigaxionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digaxion - Digital Marketing Excellence',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
