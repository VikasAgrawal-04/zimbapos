import 'package:flutter/material.dart';
import 'package:zimbapos/constants/ktextstyles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 8,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: Colors.deepPurple,
            shadowColor: Colors.lightBlue,
          ),
          onPressed: () => onPressed(),
          child: Text(
            text,
            style: KTextStyles.kButtonText,
          ),
        ),
      ),
    );
  }
}
