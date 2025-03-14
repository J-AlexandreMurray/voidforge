import 'package:flutter/material.dart';

class ViewWorldsScreen extends StatelessWidget {
  const ViewWorldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('View Worlds')),
      body: const Center(
        child: Text('Stored worlds will appear here.'),
      ),
    );
  }
}
