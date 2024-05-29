import 'package:flutter/material.dart';
import 'package:kayasmart_case/extensions/color.dart';
import 'package:kayasmart_case/models/layer_model.dart';

class CustomPolygon extends StatelessWidget {
  const CustomPolygon({
    super.key,
    required this.layer,
  });

  final LayerModel layer;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: CustomPaint(
        painter: PolygonPainter(layer: layer),
      ),
    );
  }
}

class PolygonPainter extends CustomPainter {
  final LayerModel layer;

  PolygonPainter({required this.layer});

  @override
  void paint(Canvas canvas, Size size) {
    if (layer.points == null || layer.color == null) return;
    final points = layer.points!;
    final color = layer.color!;

    final paint = Paint()
      ..color = HexColor.colorFromHex(color)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(points[0].x ?? 0, points[0].y ?? 0);
    for (int i = 1; i < points.length; i++) {
      path.lineTo(points[i].x ?? 0, points[i].y ?? 0);
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
