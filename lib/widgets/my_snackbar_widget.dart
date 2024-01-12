import 'package:flutter/material.dart';
import 'package:zimbapos/constants/ktextstyles.dart';

class UtillSnackbar {
  static void showSnackBar(
    BuildContext context, {
    required String title,
    required String body,
    required bool isSuccess,
  }) {
    final snackBar = SnackBar(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: KTextStyles.kSnackTitle,
          ),
          const SizedBox(height: 4.0),
          Text(
            body,
            style: KTextStyles.kSnackSubtitle,
          ),
        ],
      ),
      backgroundColor: isSuccess ? Colors.green : Colors.red,
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
