import 'package:flutter/material.dart';

class DashedDividerLine extends CustomPainter {
  DashedDividerLine({
    required this.dashColor,
    this.strokeWidth = 1,
  });

  final Color dashColor;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 5, dashSpace = 3, startX = 0;
    final paint = Paint()
      ..color = dashColor
      ..strokeWidth = strokeWidth;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashHeight, 0),
        paint,
      );
      startX += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}