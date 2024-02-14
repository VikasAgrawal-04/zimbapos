import 'package:flutter/material.dart';

class CreateUserRoleScreen extends StatefulWidget {
  const CreateUserRoleScreen({super.key});

  @override
  State<CreateUserRoleScreen> createState() => _CreateUserRoleScreenState();
}

class _CreateUserRoleScreenState extends State<CreateUserRoleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create User Role'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
