// lib/main.dart

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

// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'create_world_screen.dart';
import 'view_worlds_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Worldbuilding Tool'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateWorldScreen()),
                );
              },
              child: const Text('Create World'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ViewWorldsScreen()),
                );
              },
              child: const Text('View Worlds'),
            ),
          ],
        ),
      ),
    );
  }
}

// lib/screens/create_world_screen.dart

import 'package:flutter/material.dart';

class CreateWorldScreen extends StatefulWidget {
  const CreateWorldScreen({super.key});

  @override
  State<CreateWorldScreen> createState() => _CreateWorldScreenState();
}

class _CreateWorldScreenState extends State<CreateWorldScreen> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create World')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'World Name'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for saving data
                print('World: ${_nameController.text}, Description: ${_descriptionController.text}');
                Navigator.pop(context);
              },
              child: const Text('Save World'),
            ),
          ],
        ),
      ),
    );
  }
}

// lib/screens/view_worlds_screen.dart

import 'package:flutter/material.dart';

class ViewWorldsScreen extends StatelessWidget {
  const ViewWorldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Worlds')),
      body: const Center(
        child: Text('Worlds will be displayed here.'),
      ),
    );
  }
}
