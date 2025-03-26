import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const WorldbuildingApp());
}

class WorldbuildingApp extends StatelessWidget {
  const WorldbuildingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worldbuilding Tool',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
