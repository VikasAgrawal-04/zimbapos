import 'package:flutter/material.dart';

class EditUserRoleScreen extends StatefulWidget {
  const EditUserRoleScreen({super.key});

  @override
  State<EditUserRoleScreen> createState() => _EditUserRoleScreenState();
}

class _EditUserRoleScreenState extends State<EditUserRoleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit User Role'),
      ),
    );
  }
}
