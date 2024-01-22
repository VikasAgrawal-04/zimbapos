// dialog_util.dart
import 'package:flutter/material.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/constants/ktextstyles.dart';
import 'package:go_router/go_router.dart';

class UtilDialog {
  static void showMyDialog(
    BuildContext context,
    String title,
    String message,
    VoidCallback? onOkPressed,
    VoidCallback? onCancelPressed,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: KTextStyles.kAlertTitle,
          ),
          content: SingleChildScrollView(
            child: Text(
              message,
              style: KTextStyles.kAlertSubtitle,
            ),
          ),
          actions: <Widget>[
            //cancel button
            TextButton(
              onPressed: onCancelPressed ?? () => context.pop(),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            ),

            //ok button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: onOkPressed ?? () => context.pop(),
              child: const Text(
                'OK',
                style: TextStyle(
                  fontSize: 18,
                  color: KColors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
