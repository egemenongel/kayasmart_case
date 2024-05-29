import 'package:flutter/material.dart';
import 'package:kayasmart_case/extensions/color.dart';
import 'package:kayasmart_case/models/layer_model.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.layer,
  });

  final LayerModel layer;

  @override
  Widget build(BuildContext context) {
    if (layer.position == null ||
        layer.value == null ||
        layer.color == null ||
        layer.fontSize == null) {
      return const SizedBox.shrink();
    }

    final position = layer.position!;
    final value = layer.value!;
    final fontSize = layer.fontSize!;
    final color = layer.color!;

    return Positioned(
      left: position.x ?? 0,
      top: position.y ?? 0,
      child: Text(
        value,
        style: TextStyle(
          fontSize: fontSize,
          color: HexColor.colorFromHex(color),
        ),
      ),
    );
  }
}
