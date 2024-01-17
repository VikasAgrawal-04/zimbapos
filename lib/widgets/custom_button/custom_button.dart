import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButtonNew extends StatelessWidget {
  final String? text;
  final Color? color;
  final Color? iconColor;
  final TextStyle? style;
  final Function()? onTap;
  final bool? outlineBtn;
  final double? borderRadius;
  final IconData? icon;
  final double? iconSize;
  final double? width;
  final double? height;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final List<BoxShadow>? shadows;

  const CustomButtonNew(
      {this.text,
      this.color,
      this.iconColor,
      this.style,
      this.onTap,
      this.outlineBtn,
      this.borderRadius,
      this.icon,
      this.iconSize,
      this.width,
      this.height,
      this.child,
      this.padding,
      this.margin,
      this.shadows,
      super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: Container(
        height: height ?? 5.5.h,
        width: width ?? 100.w,
        alignment: Alignment.center,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          boxShadow: shadows ??
              [
                const BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                  offset: Offset(0, 0),
                  blurRadius: 19.0,
                )
              ],
          color: color ??
              (text == 'Cancel'
                  ? Colors.red
                  : text == 'Confirm'
                      ? Colors.green
                      : Theme.of(context).primaryColor),
          border: Border.all(color: Colors.transparent, width: 1),
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
        ),
        child: child ??
            Center(
              child: Text(
                text ?? "View",
                style: style ??
                    theme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w500, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
      ),
    );
  }
}
