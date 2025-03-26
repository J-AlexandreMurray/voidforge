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
