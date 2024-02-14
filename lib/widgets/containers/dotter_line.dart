import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DottedLine extends StatelessWidget {
  final Color? color;
  final bool moreWidth;
  const DottedLine({this.color, this.moreWidth = false, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DottedPainter(color: color, moreWidth: moreWidth),
      size: Size(double.infinity, 1.h),
    );
  }
}

class DottedPainter extends CustomPainter {
  final Color? color;
  final bool moreWidth;
  const DottedPainter({required this.moreWidth, this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color ?? Colors.black
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt;

    double dashWidth = moreWidth ? 4 : 2;
    double dashSpace = moreWidth ? 6 : 2;

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
