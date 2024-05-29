import 'package:flutter/material.dart';
import 'package:kayasmart_case/extensions/color.dart';
import 'package:kayasmart_case/models/layer_model.dart';

class CustomRectangle extends StatelessWidget {
  const CustomRectangle({
    super.key,
    required this.layer,
  });

  final LayerModel layer;

  @override
  Widget build(BuildContext context) {
    if (layer.position == null ||
        layer.height == null ||
        layer.width == null ||
        layer.color == null) {
      return const SizedBox.shrink();
    }

    final position = layer.position!;
    final color = layer.color!;
    final height = layer.height!;
    final width = layer.width!;

    return Positioned(
      left: position.x ?? 0,
      top: position.y ?? 0,
      child: Container(
        height: height,
        width: width,
        color: HexColor.colorFromHex(color),
      ),
    );
  }
}
