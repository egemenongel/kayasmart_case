import 'package:flutter/material.dart';
import 'package:kayasmart_case/extensions/color.dart';
import 'package:kayasmart_case/models/layer_model.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({
    super.key,
    required this.layer,
  });

  final LayerModel layer;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(layer: layer),
    );
  }
}

class LinePainter extends CustomPainter {
  final LayerModel layer;

  LinePainter({required this.layer});

  @override
  void paint(Canvas canvas, Size size) {
    if (layer.start == null ||
        layer.end == null ||
        layer.color == null ||
        layer.width == null) {
      return;
    }
    final start = layer.start!;
    final end = layer.end!;

    final paint = Paint()
      ..color = HexColor.colorFromHex(layer.color!)
      ..strokeWidth = layer.width!
      ..style = PaintingStyle.stroke;

    canvas.drawLine(
      Offset(start.x ?? 0, start.y ?? 0),
      Offset(end.x ?? 0, end.y ?? 0),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
