import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/helpers/custom_validator.dart';

class CustomTextFieldNew extends StatefulWidget {
  final Function()? textFieldTap;
  final Function()? onEditingComplete;
  final TextEditingController? control;
  final String? type;
  final int? maxLength;
  final bool isNumber;
  final TextStyle? style;
  final ValueChanged<String>? onChanged;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final String? hint;
  final bool isRequired;
  final IconData? icon;
  final IconData? prefIcon;
  final Function()? onTap;
  final bool? isReadOnly;
  final Color? fillColor;
  final FocusNode? focusNode;
  final EdgeInsets? contentPadding;
  final String? labelText;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final int? minLine;
  final int? maxLine;
  final String? errortext;
  final TextStyle? hintStyle;
  final TextAlign? textAlign;
  final bool singleInput;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextFieldNew(
      {super.key,
      this.textFieldTap,
      this.onEditingComplete,
      this.hint,
      this.control,
      this.hintStyle,
      required this.isRequired,
      this.contentPadding,
      required this.keyboardType,
      this.type,
      this.maxLength,
      required this.isNumber,
      this.onChanged,
      required this.textInputAction,
      this.icon,
      this.onTap,
      this.isReadOnly,
      this.singleInput = false,
      this.style,
      this.prefIcon,
      this.fillColor,
      this.focusNode,
      this.labelText,
      this.minLine,
      this.maxLine,
      this.errortext,
      this.enabledBorder,
      this.focusedBorder,
      this.textAlign,
      this.inputFormatters});

  @override
  State<CustomTextFieldNew> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextFieldNew> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        minLines: widget.minLine ?? 1,
        maxLines: widget.maxLine ?? 1,
        onEditingComplete: widget.onEditingComplete,
        controller: widget.control,
        focusNode: widget.focusNode,
        keyboardType: widget.keyboardType,
        onTap: widget.textFieldTap,
        style: widget.style,
        textAlign: widget.textAlign ?? TextAlign.start,
        validator: (value) {
          if (widget.isRequired) {
            switch (widget.type) {
              case 'normal':
                return Validator.text(value);
              case 'email':
                return Validator.email(value);
              case 'phone':
                return Validator.mobileNo(value);
              case 'password':
                return Validator.password(value);
              default:
                return Validator.text(value);
            }
          }
          return null;
        },
        onChanged: (value) {
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
        inputFormatters: widget.isNumber
            ? widget.singleInput
                ? [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    LengthLimitingTextInputFormatter(1)
                  ]
                : [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    LengthLimitingTextInputFormatter(10)
                  ]
            : widget.type == "username"
                ? [
                    FilteringTextInputFormatter.deny(RegExp(r'\s')),
                  ]
                : widget.keyboardType ==
                        const TextInputType.numberWithOptions(
                            decimal: false, signed: true)
                    ? [NumberInputFormat()]
                    : widget.inputFormatters,
        obscureText: widget.type == "password" ? !_isVisible : _isVisible,
        textInputAction: widget.textInputAction,
        readOnly: widget.isReadOnly ?? false,
        maxLength: widget.maxLength,
        decoration: InputDecoration(
            hoverColor: Colors.transparent,
            labelText: widget.labelText,
            hintStyle: widget.hintStyle,
            alignLabelWithHint: true,
            isDense: true,
            contentPadding: widget.contentPadding ??
                EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.2.h),
            hintText: widget.hint,
            counterText: '',
            filled: true,
            fillColor: widget.fillColor ?? const Color(0xffF2F3F5),
            enabledBorder: widget.enabledBorder ??
                OutlineInputBorder(
                    gapPadding: 0,
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
            focusedBorder: widget.focusedBorder ??
                OutlineInputBorder(
                    gapPadding: 0,
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
            prefixIcon: widget.prefIcon != null
                ? Icon(
                    widget.prefIcon,
                    color: Colors.black,
                    size: 24,
                  )
                : null,
            suffixIcon: widget.type == "password"
                ? IconButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    icon: _isVisible
                        ? Icon(
                            Icons.visibility_outlined,
                            color: Theme.of(context).primaryColor,
                          )
                        : const Icon(Icons.visibility_off_outlined,
                            color: Colors.black38),
                    color: Theme.of(context).iconTheme.color,
                  )
                : widget.icon != null
                    ? IconButton(
                        constraints: const BoxConstraints(),
                        iconSize: 24,
                        padding: EdgeInsets.zero,
                        onPressed: widget.onTap,
                        icon: Icon(
                          widget.icon,
                          color: Colors.black54,
                        ))
                    : null));
  }
}
