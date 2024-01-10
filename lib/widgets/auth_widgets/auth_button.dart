import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;

  const AuthButton({
    required this.child,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 8,
        enableFeedback: true,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
