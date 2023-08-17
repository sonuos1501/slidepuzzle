import 'package:flutter/material.dart';

class BorderSlidepuzzlePainter extends CustomPainter {
  const BorderSlidepuzzlePainter({
    required this.color,
    this.borderColor,
    required this.thickness,
    required this.edge,
    required this.brightness,
    this.elevation = 4,
  });

  final Color color;
  final Color? borderColor;
  final double thickness;
  final double edge;
  final Brightness brightness;
  final double elevation;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    final path = Path()
      ..moveTo(edge, 0)
      ..lineTo(size.width - edge, 0)
      ..lineTo(size.width, edge)
      ..lineTo(size.width, size.height - edge)
      ..lineTo(size.width - edge, size.height)
      ..lineTo(edge, size.height)
      ..lineTo(0, size.height - edge)
      ..lineTo(0, edge)
      ..close();

    canvas.drawShadow(
      path,
      borderColor ??
          Color.lerp(
            color,
            brightness == Brightness.light ? Colors.black : Colors.white,
            0.3,
          )!,
      elevation,
      true,
    );

    canvas.drawPath(path, paint);

    final borderPaint = Paint()
      ..color = borderColor ??
          Color.lerp(
            color,
            brightness == Brightness.light ? Colors.black : Colors.white,
            0.3,
          )!
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke;
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
