import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zimbapos/constants/ktextstyles.dart';

class PrimaryTextField extends StatelessWidget {
  final String hintText;
  final bool? readOnly;
  final TextInputType? keyboard;
  final TextEditingController controller;
  final Function(String) onChanged;
  final String? insideHintText;
  final String? Function(String?)? validator;
  final int? maxlines;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? enable;
  const PrimaryTextField({
    required this.hintText,
    required this.controller,
    required this.onChanged,
    this.validator,
    this.keyboard,
    this.insideHintText,
    this.readOnly,
    this.maxlines,
    this.inputFormatters,
    this.suffixIcon,
    this.prefixIcon,
    this.enable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      controller: controller,
      keyboardType: keyboard,
      enabled: enable,
      readOnly: (readOnly != null) ? readOnly! : false,
      onChanged: onChanged,
      validator: validator,
      inputFormatters: inputFormatters,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: hintText,
          alignLabelWithHint: true,
          hintText: insideHintText,
          hintStyle: KTextStyles.kTitle,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
    );
  }
}
