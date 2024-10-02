import 'package:flutter/material.dart';

class DicePainter extends CustomPainter {
  DicePainter(this.dice);
  final int dice;

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double offset = size.width / 4;

    List<Offset> dotPositions = [];

    switch (dice) {
      case 1:
        dotPositions = [Offset(centerX, centerY)];
        break;
      case 2:
        dotPositions = [
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
        ];
        break;
      case 3:
        dotPositions = [
          Offset(centerX, centerY),
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
        ];
        break;
      case 4:
        dotPositions = [
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
          Offset(centerX - offset, centerY + offset),
          Offset(centerX + offset, centerY - offset),
        ];
        break;
      case 5:
        dotPositions = [
          Offset(centerX, centerY),
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
          Offset(centerX - offset, centerY + offset),
          Offset(centerX + offset, centerY - offset),
        ];
        break;
      case 6:
        dotPositions = [
          Offset(centerX - offset, centerY - offset),
          Offset(centerX + offset, centerY + offset),
          Offset(centerX - offset, centerY + offset),
          Offset(centerX + offset, centerY - offset),
          Offset(centerX - offset, centerY),
          Offset(centerX + offset, centerY),
        ];
        break;
    }

    // Draw the dots
    Paint dotPaint = Paint()..color = Colors.white;

    for (var position in dotPositions) {
      canvas.drawCircle(position, size.width / 10, dotPaint); // Dot size
    }
  } // paint

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
