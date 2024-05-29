import 'package:flutter/material.dart';
import 'package:kayasmart_case/extensions/color.dart';
import 'package:kayasmart_case/models/layer_model.dart';

class CustomEllipse extends StatelessWidget {
  const CustomEllipse({
    super.key,
    required this.layer,
  });

  final LayerModel layer;

  @override
  Widget build(BuildContext context) {
    final position = layer.position;

    if (position == null) {
      return const SizedBox.shrink();
    }
    return Positioned(
      left: position.x ?? 0,
      top: position.y ?? 0,
      child: CustomPaint(
        painter: EllipsePainter(layer: layer),
      ),
    );
  }
}

class EllipsePainter extends CustomPainter {
  final LayerModel layer;

  const EllipsePainter({required this.layer});

  @override
  void paint(Canvas canvas, Size size) {
    if (layer.color == null) return;
    final paint = Paint()
      ..color = HexColor.colorFromHex(layer.color!)
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(
      0,
      0,
      layer.width ?? 0,
      layer.height ?? 0,
    );
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
