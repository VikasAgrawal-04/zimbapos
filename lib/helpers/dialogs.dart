import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void showMyAlertDialog(
  BuildContext context, {
  required String title,
  required String content,
  required VoidCallback onPress,
}) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text(title),
          content: Text(content),
          actionsPadding:
              const EdgeInsets.only(right: 12, left: 12, bottom: 12),
          actions: [
            OutlinedButton(
              onPressed: onPress,
              child: const Text('Yes'),
            ),
            OutlinedButton(
              onPressed: () {
                Future.delayed(
                  Duration.zero,
                  () => context.pop(),
                );
              },
              child: const Text('No'),
            )
          ],
        );
      },
    ),
  );
}
