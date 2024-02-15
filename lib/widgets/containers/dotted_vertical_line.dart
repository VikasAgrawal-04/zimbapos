import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DottedVerticalLine extends StatelessWidget {
  final Color? color;
  final bool moreWidth;
  const DottedVerticalLine({this.color, this.moreWidth = false, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DottedVerticalPainter(moreWidth: moreWidth),
      size: Size(1.w, 100.h),
    );
  }
}

class DottedVerticalPainter extends CustomPainter {
  final Color? color;
  final bool moreWidth;
  DottedVerticalPainter({required this.moreWidth, this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color ?? Colors.black
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt;

    double dashLength = moreWidth ? 4 : 2;
    double gapLength = moreWidth ? 6 : 2;

    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(Offset(size.width, startY),
          Offset(size.width, startY + dashLength), paint);
      startY += dashLength + gapLength;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
