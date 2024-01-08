import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthTextField extends StatefulWidget {
  final String hintText;
  final bool? readOnly;
  final TextInputType? keyboard;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? insideHintText;
  final String? Function(String?)? validator;
  final int? maxlines;
  final List<TextInputFormatter>? inputFormatters;
  final bool visibityEye;
  final bool? isEnable;
  final TextInputAction? textInputAction;
  const AuthTextField({
    this.textInputAction,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.validator,
    this.keyboard,
    this.insideHintText,
    this.readOnly,
    this.maxlines,
    this.inputFormatters,
    this.visibityEye = false,
    this.isEnable,
    super.key,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  late bool obscureText;
  @override
  void initState() {
    super.initState();
    if (widget.visibityEye == true) {
      obscureText = true;
    } else {
      obscureText = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.isEnable,
      maxLines: widget.maxlines,
      controller: widget.controller,
      keyboardType: widget.keyboard,
      readOnly: (widget.readOnly != null) ? widget.readOnly! : false,
      onChanged: widget.onChanged,
      validator: widget.validator ??
          (value) {
            if (value != null && value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
      inputFormatters: widget.inputFormatters,
      textInputAction: widget.textInputAction,
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: widget.hintText,
        suffixIcon: (widget.visibityEye)
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: Icon(
                  (obscureText) ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black,
                ),
              )
            : null,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 12,
        ),
        labelStyle: const TextStyle(color: Colors.black),
        hintText: widget.insideHintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w200,
          fontSize: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.black),
        ),
        errorStyle: const TextStyle(color: Colors.red),
      ),
    );
  }
}
