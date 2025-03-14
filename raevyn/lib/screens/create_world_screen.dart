import 'package:flutter/material.dart';
import '../models/world.dart';

class CreateWorldScreen extends StatefulWidget {
  const CreateWorldScreen({super.key});

  @override
  State<CreateWorldScreen> createState() => _CreateWorldScreenState();
}

class _CreateWorldScreenState extends State<CreateWorldScreen> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  void _saveWorld() {
    final name = _nameController.text.trim();
    final description = _descriptionController.text.trim();

    if (name.isEmpty || description.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    final newWorld = World(name: name, description: description);
    print('Saved World: ${newWorld.name}, ${newWorld.description}');
    Navigator.pop(context);
  }

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
              maxLines: 3,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveWorld,
              child: const Text('Save World'),
            ),
          ],
        ),
      ),
    );
  }
}
