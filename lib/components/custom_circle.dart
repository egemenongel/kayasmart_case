import 'package:flutter/material.dart';
import 'package:kayasmart_case/extensions/color.dart';
import 'package:kayasmart_case/models/layer_model.dart';

class CustomCircle extends StatelessWidget {
  const CustomCircle({
    super.key,
    required this.layer,
  });

  final LayerModel layer;

  @override
  Widget build(BuildContext context) {
    final position = layer.position;
    final radius = layer.radius;
    final color = layer.color;

    if (position == null || radius == null || color == null) {
      return const SizedBox.shrink();
    }
    return Positioned(
      top: position.y ?? 0,
      left: position.x ?? 0,
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: HexColor.colorFromHex(color),
        ),
      ),
    );
  }
}
