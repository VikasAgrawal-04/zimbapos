import 'package:flutter/material.dart';

class CreateRateSetsScreen extends StatefulWidget {
  const CreateRateSetsScreen({super.key});

  @override
  State<CreateRateSetsScreen> createState() => _CreateRateSetsScreenState();
}

class _CreateRateSetsScreenState extends State<CreateRateSetsScreen> {
  late final TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Rate Sets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
