import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());  // Launch the app with MyApp widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worldbuilding Database',
      theme: ThemeData.dark(),   // Using a dark theme for aesthetics
      home: const HomeScreen(),  // First screen the user sees
    );
  }
}